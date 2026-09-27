#!/usr/bin/env python3
import rospy
from c_srv.srv import ProcessData 



def send_data(readings):
    # try:
    process_data_proxy = rospy.ServiceProxy("ProcessData_service",ProcessData)
    rospy.wait_for_service("ProcessData_service")
        # resp = 
    process_data_proxy(readings)
        # rospy.loginfo(f"avr {resp.avr}, max {resp.max}, min {resp.min}")
    # except rospy.ServiceException as e:
        # print("called failed")


if __name__ == "__main__":
    rospy.init_node("client_process_data")
    sensor_data = [1,2,3] 
    rospy.loginfo(f"sensor Reading: {sensor_data}")
    send_data(sensor_data)    
    rospy.loginfo("ProcessData_service is ready")
    
