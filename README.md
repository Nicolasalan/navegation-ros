# Robô autônomo para armazém inteligente (AMR)

## **Sobre o Projeto**
Navegação autônoma de um robô omnidirecional para automação de armazéns. 

## RNS - ROS Navigation Stack
A Pilha de Navegação é um conjunto de nós e algoritmos ROS que são usados ​​para mover um robô de um ponto a outro de forma autônoma, evitando todos os obstáculos que o robô possa encontrar em seu caminho. O ROS Navigation Stack vem com uma implementação de vários algoritmos relacionados à navegação que podem ajudá-lo a realizar navegação autônoma em seus robôs móveis.

![RNS](/catkin_ws/src/robot_nav/docs/rns.png)

* **Fonte de odometria:** Os dados de odometria de um robô fornecem a posição do robô em relação à sua posição inicial. As principais fontes de odometria são codificadores de roda, IMU e câmeras 2D/3D (odometria visual). O valor odom deve ser publicado na pilha de navegação, que possui um tipo de mensagem `nav_msgs/Odometry`. A mensagem odom pode manter a posição e a velocidade do robô.

* **Fonte do sensor:** Os sensores são usados ​​para duas tarefas na navegação: uma para localizar o robô no mapa (usando, por exemplo, o laser) e outra para detectar obstáculos no caminho do robô (usando o laser, sonares ou nuvens de pontos) .

* **sensor transforms/tf:** os dados capturados pelos diferentes sensores do robô devem ser referenciados a um quadro de referência comum (geralmente o `base_link`) para poder comparar os dados provenientes de diferentes sensores. O robô deve publicar a relação entre o quadro de coordenadas do robô principal e os quadros dos diferentes sensores usando transformações ROS.

* **base_controller:** A função principal do controlador base é converter a saída da pilha de navegação, que é uma mensagem Twist (`geometry_msgs/Twist`), em velocidades de motor correspondentes para o robô.
## **Dependências**
Instale as seguintes dependências:
```
cd navegation-warehouse
chmod +x requirements.sh
./requirements.sh
```
## **Uso**
**Para inicializar o robô, execute o seguinte comando:**
```
cd navegation-warehouse/catkin_ws
catkin_make
source devel/setup.bash
```
**Para iniciar a simulação:**
```
roslaunch robot_nav bringup.launch
```
### Mapeamento
**Iniciar o mapa:**
```
roslaunch robot_nav gmapping_basic.launch
```
**Para visualizar a navegação enquando o mapa é gerado:**
```
roslaunch robot_nav rviz_navigation.launch
```
**Salvar o mapa:**
```
rosrun map_server map_saver -f your_map_name
```
Isso criará dois arquivos, um arquivo “your_map_name.pgm” e um arquivo “your_map_name.yaml”. Ambos os arquivos são necessários e devem estar sempre no mesmo diretório.
**Instalando o mapa:**
```
cp your_map_name.* ~/navegation-warehouse/catkin_ws/src/robot_nav/configs/navigation/maps/
```
**Para utilizar o mapa que foi salvo:**
```
export MAP_NAME=your_map_name
```
### Localização
**Iniciar a localização:**
```
roslaunch robot_nav navigation_basic_amcl.launch
```
**Para visualizar a navegação:**
```
roslaunch robot_nav rviz_navigation.launch
```

## **Configuração**
```
|-- src
    |-- aws-robomaker-small-warehouse-world 
    |-- robot_nav
        |-- config
        |-- launch
        |-- robots
        |-- worlds
```

