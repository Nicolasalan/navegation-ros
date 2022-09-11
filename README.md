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
## Clonar o repositório
```bash
git clone https://github.com/Nicolasalan/navegation-ros.git
```
## **Dependências**
Instale as seguintes dependências:
```bash
cd navegation-ros
chmod +x requirements.sh
./requirements.sh
```
## **Uso**
**Para inicializar o robô, execute o seguinte comando:**
```bash
cd navegation-ros/catkin_ws
catkin_make
source devel/setup.bash
```
**Para iniciar a simulação:**
```bash
roslaunch robot_nav bringup.launch
```
### Mapeamento
**Iniciar o mapa:**
```bash
roslaunch robot_nav gmapping_basic.launch
```
**Salvar o mapa:**
```bash
rosrun map_server map_saver -f your_map_name
```
Isso criará dois arquivos, um arquivo “your_map_name.pgm” e um arquivo “your_map_name.yaml”. Ambos os arquivos são necessários e devem estar sempre no mesmo diretório.
**Instalando o mapa:**
```bash
cp your_map_name.* ~/navegation-warehouse/catkin_ws/src/robot_nav/configs/navigation/maps/
```
**Para utilizar o mapa que foi salvo:**
```bash
export MAP_NAME=your_map_name
```
### Localização
**Iniciar a localização:**
```bash
roslaunch robot_nav navigation_basic_amcl.launch
```
Caso não tenha o mapa (SLAM):
```bash
roslaunch robot_nav navigation_basic_slam.launch
```
## Web Page
**Para iniciar a página web:**
```bash
python -m http.server 7000
```
**Apos iniciar um servidor web, acesse a página web com o comando:**
```bash
webpage_address
```
**Para conectar com o robô, com o servidor web:**
```bash
rosbridge_address
```
**Para facilitar o acesso a página web, foi criado um script: 
O caminho do arquivo é:** `navegation-ros/catkin_ws/src/robot_nav/src/main.js`

```javascript
let vueApp = new Vue({
    el: "#vueApp",
    data: {
      // ros connection
      ros: null,
      rosbridge_address: '', // adicionar o endereço do rosbridge
```
### **Pagina web:**
![WebPage](/catkin_ws/src/robot_nav/docs/pages.png)
## **Configuração**
```
|-- src
    |-- aws-robomaker-small-warehouse-world # mundo utilizado
    |-- robot_nav
        |-- config
           |-- controller 
           |-- imu
           |-- kinematics
           |-- navigation
               |-- amcl
               |-- gmapping
               |-- maps
               |-- move_base
           |-- rviz
           |-- sensor_fusion
        |-- docs
        |-- launch
        |-- robots
        |-- src
        |-- worlds
    |-- webPage
        |-- async_web_server_cpp
        |-- web_video_server
        
```
Documentação sobre como funciona a pilha de navegação em ROS
* [amcl](https://github.com/Nicolasalan/navegation-ros/tree/main/catkin_ws/src/robot_nav/configs/navigation/amcl)
* [gmapping](https://github.com/Nicolasalan/navegation-ros/tree/main/catkin_ws/src/robot_nav/configs/navigation/gmapping)
* [move_base](https://github.com/Nicolasalan/navegation-ros/tree/main/catkin_ws/src/robot_nav/configs/navigation/gmapping)
