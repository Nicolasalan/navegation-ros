#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan
import time


class RobotControl():

    def __init__(self):
        rospy.init_node('robot_control_node', anonymous=True)
        self.vel_publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.cmd = Twist()
        self.ctrl_c = False
        self.rate = rospy.Rate(10)
        rospy.on_shutdown(self.shutdownhook)

    def publish_once_in_cmd_vel(self):
        """
        This is because publishing in topics sometimes fails the first time you publish.
        In continuous publishing systems, this is no big deal, but in systems that publish only
        once, it IS very important.
        """
        while not self.ctrl_c:
            connections = self.vel_publisher.get_num_connections()
            if connections > 0:
                self.vel_publisher.publish(self.cmd)
                #rospy.loginfo("Cmd Published")
                break
            else:
                self.rate.sleep()

    def shutdownhook(self):
        # works better than the rospy.is_shutdown()
        self.stop_robot()
        self.ctrl_c = True

    def stop_robot(self):
        #rospy.loginfo("shutdown time! Stop the robot")
        self.cmd.linear.x = 0.0
        self.cmd.angular.z = 0.0
        self.publish_once_in_cmd_vel()

    def get_inputs_rotate(self):
        self.angular_speed_d = int(
            input('Enter desired angular speed (degrees): '))
        self.angle_d = int(input('Enter desired angle (degrees): '))
        clockwise_yn = input('Do you want to rotate clockwise? (y/n): ')
        if clockwise_yn == "y":
            self.clockwise = True
        if clockwise_yn == "n":
            self.clockwise = False

        return [self.angular_speed_d, self.angle_d]

    def convert_degree_to_rad(self, speed_deg, angle_deg):

        self.angular_speed_r = speed_deg * 3.14 / 180
        self.angle_r = angle_deg * 3.14 / 180
        return [self.angular_speed_r, self.angle_r]

    def rotate(self):

        # Initilize velocities
        self.cmd.linear.x = 0
        self.cmd.linear.y = 0
        self.cmd.linear.z = 0
        self.cmd.angular.x = 0
        self.cmd.angular.y = 0

        speed_d, angle_d = self.get_inputs_rotate()
        self.convert_degree_to_rad(speed_d, angle_d)

        print(self.clockwise)

        if self.clockwise:
            self.cmd.angular.z = -abs(self.angular_speed_r)
        else:
            self.cmd.angular.z = abs(self.angular_speed_r)

        # t0 is the current time
        t0 = rospy.Time.now().secs

        current_angle = 0

        # loop to publish the velocity estimate, current_distance = velocity * (t1 - t0)
        while (current_angle < self.angle_r):

            # Publish the velocity
            self.vel_publisher.publish(self.cmd)
            # t1 is the current time
            t1 = rospy.Time.now().secs
            # Calculate current_distance
            current_angle = self.angular_speed_r * (t1 - t0)
            # ros::spinOnce();
            self.rate.sleep()

        # set velocity to zero to stop the robot
        self.stop_robot()


if __name__ == '__main__':
    #rospy.init_node('robot_control_node', anonymous=True)
    robotcontrol_object = RobotControl()
    try:
        res = robotcontrol_object.rotate()
    except rospy.ROSInterruptException:
        pass