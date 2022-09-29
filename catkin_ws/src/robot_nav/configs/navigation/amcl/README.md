# Localização Monte Carlo (MCL)
Como o robô nem sempre se move conforme o esperado, ele gera muitas suposições aleatórias sobre para onde vai se mover em seguida. Essas suposições são conhecidas como partículas. Cada partícula contém uma descrição completa de uma possível pose futura. Quando o robô observa o ambiente em que está (através das leituras do sensor), ele descarta partículas que não correspondem a essas leituras e gera mais partículas próximas daquelas que parecem mais prováveis. Dessa forma, no final, a maioria das partículas convergirá na posição mais provável em que o robô está. Então, quanto mais você se mover, mais dados você obterá de seus sensores, portanto a localização será mais precisa.

O pacote AMCL (Adaptive Monte Carlo Localization) fornece o nó amcl, que utiliza o sistema MCL para rastrear a localização de um robô em movimento em um espaço 2D. Este nó assina os dados do laser, o mapa baseado em laser e as transformações do robô e publica sua posição estimada no mapa. Na inicialização, o nó amcl inicializa seu filtro de partículas de acordo com os parâmetros fornecidos.

**NOTA**: Como você deve ter notado, para nomear este pacote ROS (e nó), a palavra **Adaptive** foi adicionada ao algoritmo de Localização de Monte Carlo. Isto porque, neste nó, poderemos configurar (adaptar) alguns dos parâmetros que são utilizados neste algoritmo.

O pacote inicia uma pose inicial que publica no topico `/initialpose`, logo em seguida le os dados publicados no tópico laser `/scan`, no tópico do mapa `/map` e no tópico de transformação `/tf`, para se locomover e depois publica a estimativa pose onde o robô estava para os tópicos `/amcl_pose` e `/particlecloud`.

# Obeservação
* O amcl transforma as varreduras a laser recebidas no quadro de odometria `odom_frame_id`. Portanto, deve haver um caminho através da árvore tf do quadro em que as varreduras a laser são publicadas no quadro de odometria.
* O amcl procura a transformação entre o quadro do laser e o quadro base `base_frame_id` e o trava para sempre. Portanto, a amcl não pode lidar com um laser que se move em relação à base.

# Parâmetros
## Parâmetros Gerais
* **odom_model_type (default: `diff`):** Ele coloca o modelo de odometria em uso. Pode ser "diff", "omni", "diff corrigido" ou "omni-corrigido".
* **odom_frame_id (default: `odom`):** Indica o quadro associado à odometria.
* **base_frame_id (default: `base_link`):** Indica o quadro associado à base do robô.
* **global_frame_id (default: `map`):** Indica o nome do quadro de coordenadas publicado pelo sistema de localização.
* **use_map_topic (default: `false`):** Indica se o nó obtém os dados do mapa do tópico ou de uma chamada de serviço.

## Parâmetros de Particulas
* **min_particles (padrão: `100`):** Define o número mínimo permitido de partículas para o filtro.
* **max_particles (padrão: `5000`):** Define o número máximo permitido de partículas para o filtro.
* **kld_err (padrão: `0,01`):** Define o erro máximo permitido entre a distribuição verdadeira e a distribuição estimada.
* **update_min_d (padrão: `0,2`):** Define a distância linear (em metros) que o robô deve percorrer para realizar uma atualização de filtro.
* **update_min_a (padrão: `π/6.0`):** Define a distância angular (em radianos) que o robô deve se mover para realizar uma atualização de filtro.
* **resample_interval (padrão: `2`):** define o número de atualizações de filtro necessárias antes da reamostragem.
* **transform_tolerance (padrão: `0.1`):** Tempo (em segundos) para a data posterior da transformação publicada, para indicar que essa transformação é válida no futuro.
* **gui_publish_rate (padrão: `-1.0`):** Taxa máxima (em Hz) na qual varreduras e caminhos são publicados para visualização. Se este valor for -1,0, esta função é desabilitada.

## Parâmetros de Laser   

* **laser_min_range (padrão: `-1.0`):** Alcance mínimo de varredura a ser considerado; -1.0 fará com que o alcance mínimo relatado do laser seja usado.
* **laser_max_range (padrão: `-1.0`):** Alcance máximo de varredura a ser considerado; -1.0 fará com que o alcance máximo relatado do laser seja usado.
* **laser_max_beams (padrão: `30`):** Quantos feixes uniformemente espaçados em cada varredura devem ser usados ao atualizar o filtro.
* **laser_z_hit (padrão: `0,95`):** Peso da mistura para a parte z_hit do modelo.
* **laser_z_short (padrão: `0.1`):** Peso da mistura para a parte z_short do modelo.
* **laser_z_max (padrão: `0,05`):** Peso da mistura para a parte z_max do modelo.
* **laser_z_rand (padrão: `0,05`):** Peso da mistura para a parte z_rand do modelo.

# Serviços do AMCL
Serviços fornecidos pelo nó amcl
global_localization (`std_srvs/Empty`): Inicia a localização global, em que todas as partículas são dispersas aleatoriamente pelo espaço livre no mapa.

Serviços chamados pelo nó amcl
static_map (`nav_msgs/GetMap`): amcl chama esse serviço para recuperar o mapa que é usado para localização baseada em laser.
