# Move base

A principal função do nó `move_base` é mover um robô de sua posição atual para uma posição de objetivo com a ajuda de outros nós de navegação. Este nó liga o planejador global e o planejador local para o planejamento do caminho, conectando ao pacote de recuperação rotativa caso o robô esteja preso em algum obstáculo, e conectando o mapa de custos global e mapa de custos local para obter o mapa de obstáculos do ambiente. Basicamente, este nó é uma implementação de um SimpleActionServer, que assume uma pose de objetivo com o tipo de mensagem `geometry_msgs/PoseStamped`.

### Tópicos que o move_base publica
* `move_base/goal` (move_base_msgs/MoveBaseActionGoal)
* `move_base/cancel` (actionlib_msgs/GoalID)
* `move_base/feedback` (move_base_msgs/MoveBaseActionFeedback)
* `move_base/status` (actionlib_msgs/GoalStatusArray)
* `move_base/result` (move_base_msgs/MoveBaseActionResult)

# Planejador Global
Quando uma nova meta é recebida pelo nó `move_base`, essa meta é imediatamente enviada ao planejador global. Então, o planejador global fica encarregado de calcular um caminho seguro para chegar a essa pose de objetivo. Esse caminho é calculado antes que o robô comece a se mover, portanto, não levará em consideração as leituras que os sensores do robô estão fazendo durante o movimento.

Cada vez que um novo caminho é planejado pelo planejador global, esse caminho é publicado no tópico `/plan`.

# Navfn
O planejador `Navfn` é provavelmente o planejador global mais usado para ROS Navigation. Ele usa o algoritmo de `Dijkstra` para calcular o caminho mais curto entre a pose inicial e a pose do objetivo.

## Parâmetros do Navfn
* **/allow_unknown (padrão: `true`):** Especifica se deve ou não permitir que o navfn crie planos que percorram o espaço desconhecido. OBSERVAÇÃO: se você estiver usando um mapa de custos costmap_2d em camadas com uma camada de voxel ou obstáculo, você também deve definir o parâmetro track_unknown_space para que essa camada seja verdadeira, ou ele converterá todo o seu espaço desconhecido em espaço livre (o qual navfn ficará feliz direto).
* **/planner_window_x (padrão: `0.0`):** Especifica o tamanho x de uma janela opcional para restringir o planejador. Isso pode ser útil para restringir o NavFn para funcionar em uma pequena janela de um grande mapa de custos.
* **/planner_window_y (padrão: `0.0`):** Especifica o tamanho y de uma janela opcional para restringir o planejador. Isso pode ser útil para restringir o NavFn para funcionar em uma pequena janela de um grande mapa de custos.
* **/default_tolerance (padrão: `0.0`):** Uma tolerância no ponto de meta para o planejador. O NavFn tentará criar um plano o mais próximo possível da meta especificada, mas não mais distante do que a tolerância padrão.
* **/visualize_potential (padrão: `false`):** Especifica se deve ou não visualizar a área potencial calculada pelo navfn por meio de um PointCloud2.

# CarrotPlanner
O planejador de cenouras assume a pose do objetivo e verifica se esse objetivo está em um obstáculo. Então, se estiver em um obstáculo, ele caminha de volta ao longo do vetor entre a meta e o robô até encontrar um ponto de meta que não esteja em um obstáculo. Ele, então, passa esse ponto de meta como um plano para um planejador ou controlador local. Portanto, este planejador não faz nenhum planejamento de caminho global. É útil se você exigir que seu robô se aproxime do objetivo determinado, mesmo que o objetivo seja inalcançável. `Em ambientes internos complicados, este planejador não é muito prático.`

**NOTA** Este algoritmo pode ser útil se, por exemplo, você quiser que seu robô se mova o mais próximo possível de um obstáculo (uma mesa, por exemplo).

# Planejador Global
O `GlobalPlanner` é um substituto mais flexível para o planejador Navfn. Ele permite que  altere o algoritmo usado pelo Navfn (algoritmo de Dijkstra) para calcular caminhos para outros algoritmos. Essas opções incluem suporte para A*, alternância de aproximação quadrática e alternância de caminho de grade. O planejador global utiliza o mapa criado pelo gmapping e o mapa de custo para planejar o caminho.

# Costmaps
Um mapa de custos é um mapa que representa locais seguros para o robô estar em uma grade de células. Normalmente, os valores no mapa de custos são binários, representando tanto o espaço livre quanto os locais onde o robô estaria em colisão.

Cada célula em um mapa de custos tem um valor inteiro no intervalo {0,255}. Existem alguns valores especiais frequentemente usados ​​nesta faixa, que funcionam da seguinte forma:

* **`255` (NO_INFORMATION):** Reservado para células onde não se conhece informação suficiente.
* **`254` (LETHAL_OBSTACLE:** Indica que um obstáculo causador de colisão foi detectado nesta célula
* **`253` (INSCRIBED_INFLATED_OBSTACLE):** Não indica nenhum obstáculo, mas mover o centro do robô para este local resultará em uma colisão
* **`0` (FREE_SPACE):** Células onde não há obstáculos e, portanto, mover o centro do robô para esta posição não resultará em colisão
Existem 2 tipos de mapas de custos: mapa de custos global e mapa de custos local. A principal diferença entre eles é, basicamente, a forma como são construídos:

O mapa de custos global é criado a partir de um mapa estático.
O mapa de custos local é criado a partir das leituras dos sensores do robô.

# Global Costmap
O mapa de custos global é criado a partir de um mapa estático gerado pelo usuário (como aquele que criamos no capítulo Mapeamento). Nesse caso, o mapa de custos é inicializado para corresponder às informações de largura, altura e obstáculo fornecidas pelo mapa estático. Essa configuração é normalmente usada em conjunto com um sistema de localização, como amcl.

O mapa de custos global também possui seus próprios parâmetros, que são definidos em um arquivo YAML. 

## Parâmetros globais do mapa de custos
* **global_frame (padrão: `map`):** O quadro global para o mapa de custos operar.
* **robot_base_frame (padrão: `base_link`):** O nome do quadro para o link base do robô.
* **rolling_window (padrão: `false`):** se deve ou não usar uma versão de janela contínua do mapa de custos.
* **plugins:** Sequência de especificações de plugins, uma por camada.

# Planejador Local
Uma vez que o planejador global calculou o caminho a seguir, este caminho é enviado ao planejador local. O planejador local, então, executará cada segmento do plano global (vamos imaginar o plano local como uma parte menor do plano global). Assim, dado um plano a seguir (fornecido pelo planejador global) e um mapa, o planejador local fornecerá comandos de velocidade para mover o robô.

Ao contrário do planejador global, o planejador local monitora a odometria e os dados do laser e escolhe um plano local livre de colisões (vamos imaginar o plano local como uma parte menor do plano global) para o robô. Assim, o planejador local pode recalcular o caminho do robô em tempo real para evitar que o robô atinja objetos, mas ainda permitindo que ele chegue ao seu destino.

Depois que o plano local é calculado, ele é publicado em um tópico chamado `/local_plan`. O planejador local também publica a parte do plano global que está tentando seguir no tópico `/global_plan`. Vamos fazer um exercício para que você possa ver isso melhor.

**NOTA** Quanto ao planejador global, existem também diferentes tipos de planejadores locais. Dependendo da configuração e uso como o ambiente em que navega, etc.) e o tipo de desempenho que você deseja, você usará um ou outro.