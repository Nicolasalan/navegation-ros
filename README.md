# Intelligent autonomous robot

## **About the project**
Autonomous navigation of an omnidirectional robot for automation.

## RNS - ROS Navigation Stack
The Navigation Stack is a set of ROS nodes and algorithms that are used to move a robot from one point to another autonomously, avoiding all obstacles that the robot might encounter in its path. ROS Navigation Stack comes with an implementation of various navigation-related algorithms that can help you perform autonomous navigation on your mobile robots.

![RNS](/catkin_ws/src/robot_nav/docs/rns.png)

* **Odometry Source:** A robot's odometry data provides the robot's position relative to its home position. The main sources of odometry are wheel encoders, IMU and 2D/3D cameras (visual odometry). The odom value must be published on the navigation stack, which has a `nav_msgs/Odometry` message type. The odom message can maintain the robot's position and speed.

* **Sensor source:** Sensors are used for two tasks in navigation: one to locate the robot on the map (using for example the laser) and another to detect obstacles in the robot's path (using the laser , sonar or point clouds).

* **sensor transforms/tf:** the data captured by the different sensors of the robot must be referenced to a common frame of reference (generally the `base_link`) in order to be able to compare the data coming from different sensors. The robot must publish the relationship between the coordinate frame of the main robot and the frames of the different sensors using ROS transformations.
 
* **base_controller:** The main function of the base controller is to convert the output of the navigation stack, which is a Twist message (`geometry_msgs/Twist`), into corresponding motor speeds for the robot.
## Clone the repository
```bash
git clone https://github.com/Nicolasalan/navegation-ros.git
```
## **Dependencies**
Install the following dependencies:
```bash
cd navegation-ros
chmod +x requirements.sh
./requirements.sh
```
## **Use**
**To start the robot, run the following command:**
```bash
cd navegation-ros/catkin_ws
catkin_make
source devel/setup.bash
```
**To start the simulation:**
```bash
roslaunch robot_nav bringup.launch
```
### Mapping
**Start the map:**
```bash
roslaunch robot_nav gmapping_basic.launch
```
**Save the map:**
```bash
rosrun map_server map_saver -f your_map_name
```
This will create two files, a `your_map_name.pgm` file and a `your_map_name.yaml` file. Both files are required and must always be in the same directory.
**Installing the map:**
```bash
cp your_map_name.* ~/navegation-warehouse/catkin_ws/src/robot_nav/configs/navigation/maps/
```
**To use the map that has been saved:**
```bash
export MAP_NAME=your_map_name
```
### Location
**Start localization:**
```bash
roslaunch robot_nav navigation_basic_amcl.launch
```
If you don't have the map (SLAM):
```bash
roslaunch robot_nav navigation_basic_slam.launch
```
## Web Page
**To start the website:**
```bash
python -m http.server 7000
```
**After starting a web server, access the web page with the command:**
```bash
roslaunch robot_nav web.launch
```
**This launch provides a ws protocol for communication with the web page.**

**To facilitate access to the web page, a script was created:
The file path is:** `navigation-ros/catkin_ws/src/robot_nav/src/main.js`

```javascript
let vueApp = new Vue({
    el: "#vueApp",
    data: {
      // ros connection
      ros: null,
      rosbridge_address: '', // adicionar o endereço do rosbridge
```
### **Web page:**
Web page for robot control, using ROS.
![WebPage](/catkin_ws/src/robot_nav/docs/pages.png)
## **Settings**
The repository structure and settings are described below:
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
Documentation on how the navigation stack in ROS works
* [amcl](https://github.com/Nicolasalan/navegation-ros/tree/main/catkin_ws/src/robot_nav/configs/navigation/amcl/README.md)
* [gmapping](https://github.com/Nicolasalan/navegation-ros/tree/main/catkin_ws/src/robot_nav/configs/navigation/gmapping/README.md)
* [move_base](https://github.com/Nicolasalan/navegation-ros/blob/main/catkin_ws/src/robot_nav/configs/navigation/move_base/README.md)
---
**To use with another robot, just change the `config` configuration files, and add the robot model in the `robots` directory.**
