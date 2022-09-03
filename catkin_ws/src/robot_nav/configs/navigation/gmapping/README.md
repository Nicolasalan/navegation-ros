# SLAM
Localização e Mapeamento Simultâneas (SLAM). Este é o nome que define o problema robótico de construir um mapa de um ambiente desconhecido ao mesmo tempo que acompanha a localização do robô no mapa que está sendo construído. Esse é basicamente o problema que o Mapeamento está resolvendo.

# Gmapping
O pacote gmapping ROS é uma implementação de um algoritmo SLAM específico chamado gmapping. Isso significa que alguém implementou o algoritmo gmapping para você usar dentro do ROS, sem ter que codificá-lo você mesmo. Portanto, se você usa a pilha de navegação do ROS, você só precisa saber (e se preocupar) como configurar o gmapping para seu robô específico (que é exatamente o que você aprenderá neste capítulo).

O pacote gmapping contém um ROS Node chamado slam_gmapping, que permite criar um mapa 2D usando o laser e colocar dados que seu robô móvel está fornecendo enquanto se move em um ambiente. Este nó basicamente lê os dados do laser e as transformações do robô, e os transforma em um mapa de grade de ocupação (OGM).

```bash
roslaunch robot_nav gmapping_basic.launch
```
O mapa gerado é publicado durante todo o processo no tópico `/map`, razão pela qual você pode ver o processo de construção do mapa com o Rviz (porque o Rviz apenas visualiza os tópicos).

O tópico `/map` usa um tipo de mensagem de `nav_msgs/OccupancyGrid`, pois é um OGM. A ocupação é representada como um número inteiro no intervalo {0, 100}. Com 0 significando completamente livre, 100 significando completamente ocupado e o valor especial de -1 para completamente desconhecido.

# Salvando o mapa
Outro dos pacotes disponíveis no ROS Navigation Stack é o pacote map_server. Este pacote fornece o nó `map_saver`, que nos permite acessar os dados do mapa de um serviço ROS e salvá-lo em um arquivo.

Quando você solicita que o map_saver salve o mapa atual, os dados do mapa são salvos em dois arquivos: um é o arquivo YAML, que contém os metadados do mapa e o nome da imagem, e o segundo é a própria imagem, que contém os dados codificados do mapa da grade de ocupação.

```bash
rosrun map_server map_saver -f ~/map
```
1. O atributo `-f` permite que você dê aos arquivos um nome personalizado. Por padrão (se você não usar o atributo `-f`), os nomes do arquivo seriam `map.pgm` e `map.yaml`.

2. Lembre-se que, para poder visualizar os arquivos gerados através do IDE, estes arquivos devem estar no diretório `/home/user/catkin_ws/src`. Os arquivos serão salvos inicialmente no diretório onde você executa o comando.

A imagem descreve o estado de ocupação de cada célula do mundo na cor do pixel correspondente. Os pixels mais brancos estão livres, os pixels mais pretos estão ocupados e os pixels intermediários são desconhecidos. Imagens coloridas e em tons de cinza são aceitas, mas a maioria dos mapas é cinza (mesmo que possam ser armazenados como se fossem coloridos). Os limites no arquivo YAML são usados ​​para dividir as três categorias.

Quando comunicada via mensagens ROS, a ocupação é representada como um inteiro no intervalo [0,100], com 0 significando completamente livre e 100 significando completamente ocupado, e o valor especial -1 para completamente desconhecido.

Os dados da imagem são lidos via `SDL_Image`; os formatos suportados variam, dependendo do que o `SDL_Image` fornece em uma plataforma específica. De um modo geral, os formatos de imagem mais populares são amplamente suportados.

# Observação
O mapa criado é um mapa estático. Isso significa que o mapa sempre permanecerá como estava quando foi criado. Assim, quando cria um Mapa, ele irá capturar o ambiente como está no exato momento em que o processo de mapeamento está sendo realizado. Se, por algum motivo, o ambiente mudar no futuro, essas mudanças não aparecerão no mapa, portanto, não serão mais válidas (ou não corresponderão ao ambiente real).

O mapa criado é um mapa 2D. Isso significa que os obstáculos que aparecem no mapa não têm altura.

Para que o nó slam_gmapping existem 2 transformações:

o quadro anexado ao `laser` -> `base_link`: Normalmente um valor fixo, transmitido periodicamente por um robot_state_publisher ou um tf static_transform_publisher.
`base_link` -> `odom`: Normalmente fornecido pelo sistema Odometry.

Como o robô precisa acessar essas informações a qualquer momento, publicaremos essas informações em uma árvore de transformação. A árvore de transformação é como um banco de dados onde podemos encontrar informações sobre todas as transformações entre os diferentes quadros (elementos) do robô.

Você pode visualizar a árvore de transformação do seu sistema em execução a qualquer momento usando o seguinte comando:
```bash
rosrun tf2_tools view_frames.py
```
O comando acima irá gerar um arquivo .pdf com a árvore de transformação do seu sistema.
# Configurando o pacote gmapping
Este nó é altamente configurável e possui muitos parâmetros que podem ser alterados para melhorar o desempenho do mapeamento. Esses parâmetros serão lidos do ROS Parameter Server e podem ser definidos no próprio arquivo de inicialização ou em arquivos de parâmetros separados (arquivo YAML).

* **base_frame (padrão: `base_link`):** Indica o nome do quadro anexado à base móvel.
* **map_frame (padrão: `map`):** Indica o nome do frame anexado ao mapa.
* **odom_frame (padrão: `odom`):** Indica o nome do quadro anexado ao sistema de odometria.
* **map_update_interval (padrão: `5.0`):** Define o tempo (em segundos) para esperar até atualizar o mapa.

## Parâmetros do sensor laser
* **maxRange(float):** Define o alcance máximo do laser. Defina este valor para algo ligeiramente superior ao alcance máximo do sensor real.
* **maxUrange(padrão: `80.0`):** Define o alcance máximo utilizável do laser. Os feixes de laser serão cortados para este valor.
* **MinimumScore (padrão: `0.0`):** Define a pontuação mínima para considerar uma leitura de laser boa.

## Parâmetros do mapa
* **xmin (default: `-100.0`):** Tamanho inicial do mapa
* **ymin (default: `-100.0`):** Tamanho inicial do mapa
* **xmax (default: `100.0`):** Tamanho inicial do mapa
* **ymax (default: `100.0`):** Tamanho inicial do mapa
* **delta (default: `0.05`):** Define a resolução do mapa

* **linearUpdate (padrão: `1.0`):** Define a distância linear que o robô deve percorrer para processar uma leitura a laser.
* **angularUpdate (padrão: `0,5`):** Define a distância angular que o robô deve se mover para processar uma leitura a laser.
* **temporalUpdate (padrão: `-1.0`):** Define o tempo (em segundos) de espera entre as leituras do laser. Se esse valor for definido como -1,0, essa função será desativada.
* **particles (padrão: `30`):** Número de partículas no filtro

Todos esses parâmetros podem ser alterados no arquivo YAML.
```
~/navegation-warehouse/catkin_ws/src/robot_nav/configs/navigation/gmapping/gmapping_basic.yaml
```