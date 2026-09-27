#include "ros/ros.h"
#include "c_srv/AddTwoInts.h"

bool srv_callback(c_srv::AddTwoInts::Request &req,
                  c_srv::AddTwoInts::Response &res){
    res.sum = req.x + req.y;
    ROS_INFO("Received: %ld  + %ld", req.x,req.y);
    return true;
}

int main(int argc, char ** argv){
    ros::init(argc , argv, "add_two_ints_server");
    ros::NodeHandle nh;
    ros::ServiceServer service = nh.advertiseService("add_two_ints",srv_callback);
    ROS_INFO("Ready to add two integers.");
    ros:: spin();







    return 0;
}