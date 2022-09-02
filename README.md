# Robô autônomo para armazém inteligente (AMR)

## **Sobre o Projeto**
Navegação autônoma de um robô omnidirecional para automação de armazéns. 

## RNS - ROS Navigation Stack
A Pilha de Navegação é um conjunto de nós e algoritmos ROS que são usados ​​para mover um robô de um ponto a outro de forma autônoma, evitando todos os obstáculos que o robô possa encontrar em seu caminho. O ROS Navigation Stack vem com uma implementação de vários algoritmos relacionados à navegação que podem ajudá-lo a realizar navegação autônoma em seus robôs móveis.
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

