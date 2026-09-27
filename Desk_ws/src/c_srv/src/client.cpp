#include "ros/ros.h"
#include "c_srv/AddTwoInts.h"


int main(int argc, char ** argv){
    ros::init(argc,argv,"add_two_int_client");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<c_srv::AddTwoInts>("add_two_ints");

    c_srv::AddTwoInts var;
    var.request.x=45;
    var.request.y=45;

    client.call(var);

    ROS_INFO("I got: %ld",var.response.sum);





    return 0;
}