;; Auto-generated. Do not edit!


(when (boundp 'ros_vision_pipeline::ColourDepth)
  (if (not (find-package "ROS_VISION_PIPELINE"))
    (make-package "ROS_VISION_PIPELINE"))
  (shadow 'ColourDepth (find-package "ROS_VISION_PIPELINE")))
(unless (find-package "ROS_VISION_PIPELINE::COLOURDEPTH")
  (make-package "ROS_VISION_PIPELINE::COLOURDEPTH"))

(in-package "ROS")
;;//! \htmlinclude ColourDepth.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ros_vision_pipeline::ColourDepth
  :super ros::object
  :slots (_colour_image _depth_image ))

(defmethod ros_vision_pipeline::ColourDepth
  (:init
   (&key
    ((:colour_image __colour_image) (instance sensor_msgs::Image :init))
    ((:depth_image __depth_image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _colour_image __colour_image)
   (setq _depth_image __depth_image)
   self)
  (:colour_image
   (&rest __colour_image)
   (if (keywordp (car __colour_image))
       (send* _colour_image __colour_image)
     (progn
       (if __colour_image (setq _colour_image (car __colour_image)))
       _colour_image)))
  (:depth_image
   (&rest __depth_image)
   (if (keywordp (car __depth_image))
       (send* _depth_image __depth_image)
     (progn
       (if __depth_image (setq _depth_image (car __depth_image)))
       _depth_image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _colour_image
    (send _colour_image :serialization-length)
    ;; sensor_msgs/Image _depth_image
    (send _depth_image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _colour_image
       (send _colour_image :serialize s)
     ;; sensor_msgs/Image _depth_image
       (send _depth_image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _colour_image
     (send _colour_image :deserialize buf ptr-) (incf ptr- (send _colour_image :serialization-length))
   ;; sensor_msgs/Image _depth_image
     (send _depth_image :deserialize buf ptr-) (incf ptr- (send _depth_image :serialization-length))
   ;;
   self)
  )

(setf (get ros_vision_pipeline::ColourDepth :md5sum-) "c674a567e9981979126deef6a4d60467")
(setf (get ros_vision_pipeline::ColourDepth :datatype-) "ros_vision_pipeline/ColourDepth")
(setf (get ros_vision_pipeline::ColourDepth :definition-)
      "sensor_msgs/Image colour_image
sensor_msgs/Image depth_image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :ros_vision_pipeline/ColourDepth "c674a567e9981979126deef6a4d60467")


