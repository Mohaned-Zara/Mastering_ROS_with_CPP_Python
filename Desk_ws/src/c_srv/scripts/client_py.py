#!/usr/bin/env python
import sys
import rospy
from c_srv.srv import AddTwoInts


rospy.init_node("client_add_node_py")
rospy.wait_for_service("add_two_ints_service")

service_proxy = rospy.ServiceProxy("add_two_ints_service",AddTwoInts)
print(f"result: {service_proxy(10,45).sum}")







# def add_two_ints_client(x, y):
    
#     try:
#         resp1 = add_two_ints(x, y)
#         return resp1.sum
#     except rospy.ServiceException as e:
#         print("Service call failed: %s"%e)

# def usage():
#     return "%s [x y]"%sys.argv[0]

# if __name__ == "__main__":
#     if len(sys.argv) == 3:
#         x = int(sys.argv[1])
#         y = int(sys.argv[2])
#     else:
#         print(usage())
#         sys.exit(1)
#     print("Requesting %s+%s"%(x, y))
#     print("%s + %s = %s"%(x, y, add_two_ints_client(x, y)))