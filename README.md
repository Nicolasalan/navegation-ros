# Robô autônomo para armazém inteligente (AMR)

## **Sobre o Projeto**
Navegação autônoma de um robô omnidirecional para automação de armazéns. 
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
**Instalando o mapa:**
```
cp your_map_name.* ~/ros_workspace/src/neo_mp[...]/configs/navigation/maps/
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

