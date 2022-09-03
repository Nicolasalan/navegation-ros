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

# dwa_local_planner
O planejador local do DWA fornece uma implementação do algoritmo Dynamic Window Approach. É basicamente uma reescrita da opção DWA (Dynamic Window Approach) do planejador local base, mas o código é muito mais limpo e fácil de entender, principalmente na forma como as trajetórias são simuladas.

Portanto, para aplicativos que usam a abordagem DWA para planejamento local, o `dwa_local_planner` é provavelmente a melhor escolha. Esta é a opção mais utilizada.

# eband_local_planner
O planejador local eband implementa o método `Elastic Band` para calcular o plano local a seguir. [http://wiki.ros.org/eband_local_planner]

# teb_local_planner
O planejador local teb implementa o método `Timed Elastic Band` para calcular o plano local. [http://wiki.ros.org/teb_local_planner]

## Parâmetros do planejador local

* **/acc_lim_x (padrão: `2.5`):** o limite de aceleração x do robô em metros/s^2
* **/acc_lim_th (padrão: `3.2`):** o limite de aceleração rotacional do robô em radianos/s^2
* **/max_vel_trans (padrão: `0,55`):** O valor absoluto da velocidade de translação máxima para o robô em m/s
* **/min_vel_trans (padrão: `0.1`):** O valor absoluto da velocidade de translação mínima para o robô em m/s
* **/max_vel_x (padrão: `0,55`):** A velocidade máxima x para o robô em m/s.
* **/min_vel_x (padrão: 0.0): A velocidade mínima x para o robô em m/s, negativa para o movimento para trás.
* **/max_vel_theta (padrão: `1.0`):** O valor absoluto da velocidade rotacional máxima do robô em rad/s
* **/min_vel_theta (padrão: `0,4`):** O valor absoluto da velocidade rotacional mínima para o robô em rad/s

## Parâmetros de tolerância de meta
* **/yaw_goal_tolerance (double, default: `0.05`):** A tolerância, em radianos, para o controlador em yaw/rotation ao atingir seu objetivo
* **/xy_goal_tolerance (double, default: `0.10`):** A tolerância, em metros, para o controlador na distância xey ao atingir uma meta
* **/latch_xy_goal_tolerance (bool, default: `false`):** Se a tolerância da meta estiver travada, se o robô alcançar o local xy da meta, ele simplesmente girará no lugar, mesmo que termine fora da tolerância da meta enquanto estiver fazendo isso.

## Parâmetros de simulação direta
* **/sim_time (padrão: `1,7`):** a quantidade de tempo para simular trajetórias em segundos
* **/sim_granularity (padrão: `0,025`):** o tamanho do passo, em metros, a ser percorrido entre pontos em uma determinada trajetória
* **/vx_samples (padrão: `3`):** o número de amostras a serem usadas ao explorar o espaço de velocidade x
* **/vy_samples (padrão: `10`):** o número de amostras a serem usadas ao explorar o espaço de velocidade y
* **/vtheta_samples (padrão: `20`):** o número de amostras a serem usadas ao explorar o espaço de velocidade teta

## Parâmetros de pontuação da trajetória
* **/path_distance_bias (padrão: `32.0`):** O peso de quanto o controlador deve ficar próximo ao caminho que recebeu
* **/goal_distance_bias (padrão: `24.0`):** O peso de quanto o controlador deve tentar atingir seu objetivo local; também controla a velocidade
* **/occdist_scale (padrão: `0.01`):** O peso de quanto o controlador deve tentar evitar obstáculos

# Local Costmap
A primeira coisa que você precisa saber é que o planejador local usa o mapa de custos local para calcular os planos locais.

Ao contrário do mapa de custos global, o mapa de custos local é criado diretamente das leituras do sensor do robô. Dada uma largura e uma altura para o mapa de custos (que são definidas pelo usuário), ele mantém o robô no centro do mapa de custos enquanto se move pelo ambiente, retirando informações de obstáculos do mapa à medida que o robô se move.

O mapa de custos local detecta novos objetos que aparecem na simulação, enquanto o mapa de custos global não.

Isso acontece, porque o mapa de custos global é criado a partir de um arquivo de mapa estático. Isso significa que o mapa de custos não mudará, mesmo que o ambiente mude. O mapa de custos local, em vez disso, é criado a partir das leituras dos sensores do robô, portanto, ele sempre será atualizado com novas leituras dos sensores.

Como o mapa de custos global e o mapa de custos local não têm o mesmo comportamento, o arquivo de parâmetros também deve ser diferente. 

## Parâmetros do mapa de custos local

* **global_frame:** O quadro global para o mapa de custos operar. No mapa de custos local, este parâmetro deve ser definido como "/odom".
* **robot_base_frame:** O nome do quadro para o link base do robô.
rolling_window: se deve ou não usar uma versão de janela rolante do mapa de custos. Se o * * * **parâmetro static_map** for configurado como true, esse parâmetro deverá ser configurado como false. No mapa de custos local, esse parâmetro deve ser definido como "true".
* **update_frequency (padrão: `5.0`):** A frequência em Hz para o mapa a ser atualizado.
* **width (padrão: `10`):** A largura do mapa de custos.
* **heigth (padrão: `10`):** A altura do mapa de custos.
* **plugins:** Sequência de especificações de plugins, uma por camada. Cada especificação é um dicionário com campos de nome e tipo. O nome é usado para definir o namespace do parâmetro para o plug-in.

O mapa de custos se inscreve automaticamente nos tópicos do sensor e se atualiza de acordo com os dados que recebe deles. Cada sensor é usado para marcar (inserir informações de obstáculos no mapa de custos), limpar (remover informações de obstáculos do mapa de custos) ou ambos.

Uma operação de marcação é apenas um índice em uma matriz para alterar o custo de uma célula.
Uma operação de limpeza, no entanto, consiste em raytracing através de uma grade da origem do sensor para fora para cada observação relatada.

As operações de marcação e limpeza podem ser definidas na camada de obstáculos.

## Parâmetros comuns do mapa de custos

footprint: footprint é o contorno da base móvel. No ROS, é representado por uma matriz bidimensional da forma [x0, y0], [x1, y1], [x2, y2], ...]. Esta pegada será usada para calcular o raio de círculos inscritos e círculos circunscritos, que são usados ​​para inflar obstáculos de uma forma que se encaixe neste robô. Normalmente, por segurança, queremos que a footprint seja um pouco maior que o contorno real do robô.
robot_radius: Caso o robô seja circular, especificaremos este parâmetro ao invés do footprint.
parâmetros das camadas: Aqui vamos definir os parâmetros para cada camada.
Cada camada tem seus próprios parâmetros.

### Camada de Obstáculos
A camada de obstáculos é responsável pelas operações de marcação e limpeza.

O mapa de custos se inscreve automaticamente nos tópicos do sensor e se atualiza de acordo com os dados que recebe deles. Cada sensor é usado para marcar (inserir informações de obstáculos no mapa de custos), limpar (remover informações de obstáculos do mapa de custos) ou ambos.

Uma operação de marcação é apenas um índice em uma matriz para alterar o custo de uma célula.
Uma operação de limpeza, no entanto, consiste em raytracing através de uma grade da origem do sensor para fora para cada observação relatada.

As operações de marcação e limpeza podem ser definidas na camada de obstáculos.

Para configurar a camada de obstáculo, precisamos primeiro definir um nome para a camada e, em seguida, definir o parâmetro `observ_sources`.

### Parâmetros da camada de obstáculos
* **/source_name/topic (padrão: `source_name`):** O tópico no qual os dados do sensor são recebidos para esta origem. O padrão é o nome da fonte.
* **/source_name/data_type (padrão: "`PointCloud`"):** o tipo de dados associado ao tópico, no momento, apenas "PointCloud", "PointCloud2" e "LaserScan" são suportados.
* **/source_name/clearing (padrão: `false`):** se esta observação deve ou não ser usada para limpar o espaço livre.
* **/source_name/marking (padrão: `true`):** se esta observação deve ou não ser usada para marcar obstáculos.
* **/source_name/inf_is_valid (padrão: `false`):** Permite valores Inf em mensagens de observação "LaserScan". Os valores Inf são convertidos para o alcance máximo do laser.
* **/source_name/max_obstacle_height (`padrão: 2.0`):** A altura máxima de qualquer obstáculo a ser inserido no mapa de custos, em metros. Este parâmetro deve ser definido para ser um pouco mais alto que a altura do seu robô.
* **/source_name/obstacle range (`padrão: 2.5`):** A distância máxima padrão do robô na qual um obstáculo será inserido no mapa de custo, em metros. Isso pode ser substituído por sensor.
* **/source_name/raytrace_range (`padrão: 3.0`):** O intervalo padrão em metros no qual traçar os obstáculos do mapa usando dados do sensor. Isso pode ser substituído por sensor.

## Inflation Layer
A camada de insuflação é responsável por realizar a insuflação em cada célula com um obstáculo.

* **inflation_radius (padrão: `0,55`):** O raio em metros para o qual o mapa infla os valores de custo de obstáculo.
* **cost_scaling_factor (padrão: `10.0`):** Um fator de escala para aplicar aos valores de custo durante a inflação.

##  Static Layer
A camada estática é responsável por fornecer o mapa estático aos mapas de custos que o requerem (mapa de custos global).

map_topic (string, default: "map"): O tópico que o mapa de custos assina para o mapa estático.

## Recovery Behaviors
Pode acontecer que, ao tentar realizar uma trajetória, o robô fique preso por algum motivo. Felizmente, se isso acontecer, o ROS Navigation Stack fornece métodos que podem ajudar o robô a se soltar e continuar navegando. Estes são os comportamentos de recuperação.

O ROS Navigation Stack oferece dois comportamentos de recuperação: mapa de custos claro e recuperação rotativa.

Para habilitar os comportamentos de recuperação, precisamos definir o seguinte parâmetro no arquivo de parâmetros move_base:

recovery_behavior_enabled (padrão: true): habilita ou desabilita os comportamentos de recuperação.

### Rotate Recovery
Basicamente, o comportamento de recuperação de rotação é um comportamento de recuperação simples que tenta liberar espaço girando o robô 360 graus. Dessa forma, o robô poderá encontrar um caminho livre de obstáculos para continuar navegando.

Possui alguns parâmetros para alterar seu comportamento:
* **/sim_granularity (padrão: `0,017`):** A distância, em radianos, entre verificações de obstáculos ao verificar se uma rotação no local é segura. Padrões para 1 grau.
* **/frequency (padrão: `20.0`):** A frequência, em HZ, na qual enviar comandos de velocidade para a base móvel.
Outros parâmetros
* **/yaw_goal_tolerance (double, default: `0.05`):** A tolerância, em radianos, para o controlador em yaw/rotation ao atingir seu objetivo
* **/acc_lim_th (double, default: `3.2`):** O limite de aceleração rotacional do robô, em radianos/s^2
* **/max_rotational_vel (double, default: `1.0`):** A velocidade rotacional máxima permitida para a base, em radianos/s
* **/min_in_place_rotational_vel (double, default: `0,4`):** a velocidade rotacional mínima permitida para a base durante a execução de rotações no local, em radianos/s

# Clear Costmap
A recuperação clara do mapa de custos é um comportamento de recuperação simples que libera espaço eliminando obstáculos fora de uma região especificada do mapa do robô. Basicamente, o mapa de custos local reverte para o mesmo estado que o mapa de custos global.
