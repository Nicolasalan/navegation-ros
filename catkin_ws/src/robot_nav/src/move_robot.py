#!/usr/bin/env python3

import rospy
import actionlib

from robot_nav.srv import goal
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

class MoveRobot():

    mov = 0

    def __init__(self):
        
        rospy.Service('move_robot', goal, self.handler)

        rospy.loginfo("Start MoveRobot Init process...")
        # get an instance of RosPack with the default search paths
        self.rate = rospy.Rate(5)
        
        self.client = actionlib.SimpleActionClient('move_base',MoveBaseAction)
        rospy.loginfo("Finished FaceRecogniser Init process...Ready")

        self._frame_id = "map"

        rospy.loginfo('Start ...!')


    def move(self):
 
        # Waits until the action server has started up and started listening for goals.
        self.client.wait_for_server()

        # Creates a new goal with the MoveBaseGoal constructor
        goal = MoveBaseGoal()
        goal.target_pose.header.frame_id = self._frame_id
        goal.target_pose.header.stamp = rospy.Time.now()
        # Move 0.5 meters forward along the x axis of the "map" coordinate frame 
        goal.target_pose.pose.position.x = 0.5
        goal.target_pose.pose.position.y = 1.0
        # No rotation of the mobile base frame w.r.t. map frame
        goal.target_pose.pose.orientation.w = 1.0

        # Sends the goal to the action server.
        self.client.send_goal(goal)
        # Waits for the server to finish performing the action.
        wait = self.client.wait_for_result()
        # If the result doesn't arrive, assume the Server is not available
        if not wait:
            rospy.logerr("Action server not available!")
            rospy.signal_shutdown("Action server not available!")
        else:
        # Result of executing the action
            return self.client.get_result() 
                

    def handler(self, request):
        self.mov = 0

        while self.mov == 0:
            resp = self.move()
            self.rate.sleep()

            if resp is True:
                return "Ready ...!"


if __name__ == '__main__':
    rospy.init_node('move_robot', log_level=rospy.INFO)
    MoveRobot()

    try:
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
