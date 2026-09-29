#include <ros/ros.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <geometry_msgs/TransformStamped.h>
#include <turtlesim/Pose.h>

std::string turtle_name;

void poseCallback(const turtlesim::PoseConstPtr& msg){
  static tf2_ros::TransformBroadcaster br;
  geometry_msgs::TransformStamped TFS;
  
  TFS.header.stamp = ros::Time::now();
  TFS.header.frame_id = "world";
  TFS.child_frame_id = turtle_name;
  TFS.transform.translation.x = msg->x;
  TFS.transform.translation.y = msg->y;
  TFS.transform.translation.z = 0.0; //because turtlesim is a 2D sim.
  tf2::Quaternion q;
  q.setRPY(0, 0, msg->theta); // only rotae about Z-axis (YAW)
  TFS.transform.rotation.x = q.x();
  TFS.transform.rotation.y = q.y();
  TFS.transform.rotation.z = q.z();
  TFS.transform.rotation.w = q.w();

  br.sendTransform(TFS);
}

int main(int argc, char** argv){
  ros::init(argc, argv, "my_tf2_broadcaster");

  ros::NodeHandle private_node("~");
  if (! private_node.hasParam("turtle"))
  {
    if (argc != 2){ROS_ERROR("need turtle name as argument"); return -1;};
    turtle_name = argv[1];
  }
  else
  {
    private_node.getParam("turtle", turtle_name);
  }
    
  ros::NodeHandle node;
  ros::Subscriber sub = node.subscribe(turtle_name+"/pose", 10, &poseCallback);

  ros::spin();
  return 0;
};