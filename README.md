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
Para inicializar o robô, execute o seguinte comando:
```
cd navegation-warehouse/catkin_ws
catkin_make
source devel/setup.bash
```
Para iniciar a simulação:
```
roslaunch neo_simulation simulation_basic.launch
```
## **Configuração**
```
|-- src
    |-- aws-robomaker-small-warehouse-worls
    |-- neo_common
    |-- neo_kinematics_mecanum
    |-- neo_localization
    |-- neo_msgs
    |-- neo_simulation
    |-- slam_gmapping

```

