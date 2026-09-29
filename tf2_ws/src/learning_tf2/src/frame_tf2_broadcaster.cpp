#include <ros/ros.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2/LinearMath/Quaternion.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "my_tf2_broadcaster");
  ros::NodeHandle node;

  tf2_ros::TransformBroadcaster tfb;
  geometry_msgs::TransformStamped tfs;

  tfs.header.frame_id = "turtle1";
  tfs.child_frame_id = "carrot1";
  tfs.transform.translation.x = 0.0;
  tfs.transform.translation.y = 2.0;
  tfs.transform.translation.z = 0.0;
  tf2::Quaternion q;
  q.setRPY(0, 0, 0);
  tfs.transform.rotation.x = q.x();
  tfs.transform.rotation.y = q.y();
  tfs.transform.rotation.z = q.z();
  tfs.transform.rotation.w = q.w();

  ros::Rate rate(10.0);
  while (node.ok()){
    tfs.header.stamp = ros::Time::now();
    // double t = ros::Time::now().toSec();
    // tfs.transform.translation.x = 4.0*sin(ros::Time::now().toSec());
    // tfs.transform.translation.y = 4.0*cos(ros::Time::now().toSec());
    tfs.transform.translation.x = 2.0 * sin(0.5 * (ros::Time::now().toSec()));
    tfs.transform.translation.y = 2.0 * cos(0.5 * (ros::Time::now().toSec()));
    tfb.sendTransform(tfs);
    rate.sleep();
    printf("sending\n");
  }
};