#!/usr/bin/env python3
import rospy
from c_srv.srv import AddTwoInts, AddTwoIntsResponse 

def handle_callback(req):
    return AddTwoIntsResponse(req.x + req.y)

rospy.init_node("server_add_node_py")
service = rospy.Service("add_two_ints_service",AddTwoInts,handle_callback)


rospy.spin()