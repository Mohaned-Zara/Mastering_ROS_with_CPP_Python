#!/usr/bin/env python3
import rospy
from c_srv.srv import ProcessData, ProcessDataResponse 



def process_sensor_data(req):
    readings = req.readings
    # print("received array len:", len(readings))

    avr_v= sum(readings)/len(readings)
    max_v = max(readings)
    min_v=min(readings)
    rospy.loginfo(f"avr {avr_v}, max {max_v}, min {min_v}")
    return ProcessDataResponse(avr_v,max_v,min_v)


def main():
    rospy.init_node("server_process_data")
    rospy.Service("ProcessData_service",ProcessData,process_sensor_data)
    # rospy.loginfo("ProcessData_service is ready")
    rospy.spin()

if __name__ == "__main__":
    main()