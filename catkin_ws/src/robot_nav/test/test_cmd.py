#!/usr/bin/env python3

from robot_control.rotate_robot import RobotControl
import rosunit
import unittest
import rostest
import rospy
from geometry_msgs.msg import Twist
import time
#import sys
PKG = 'robot_nav'
NAME = 'robot_cmd_ros'


class TestRobotControl(unittest.TestCase):

    def setUp(self):
        self.rc = RobotControl()
        self.success = False

    def callback(self, msg):
        print(rospy.get_caller_id(), "Angular Speed: %s" % msg.angular.z)
        self.success = msg.angular.z and msg.angular.z == 1

    def test_publish_cmd_vel(self):
        
        test_sub = rospy.Subscriber("/cmd_vel", Twist, self.callback)
        self.rc.cmd.angular.z = 1
        self.rc.publish_once_in_cmd_vel()
        timeout_t = time.time() + 10.0  # 10 seconds
        while not rospy.is_shutdown() and not self.success and time.time() < timeout_t:
            time.sleep(0.1)
        self.assert_(self.success)


if __name__ == '__main__':
    rostest.rosrun(PKG, NAME, TestRobotControl)