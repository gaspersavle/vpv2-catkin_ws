; Auto-generated. Do not edit!


(cl:in-package ros_vision_pipeline-msg)


;//! \htmlinclude ColourDepth.msg.html

(cl:defclass <ColourDepth> (roslisp-msg-protocol:ros-message)
  ((colour_image
    :reader colour_image
    :initarg :colour_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass ColourDepth (<ColourDepth>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColourDepth>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColourDepth)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vision_pipeline-msg:<ColourDepth> is deprecated: use ros_vision_pipeline-msg:ColourDepth instead.")))

(cl:ensure-generic-function 'colour_image-val :lambda-list '(m))
(cl:defmethod colour_image-val ((m <ColourDepth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vision_pipeline-msg:colour_image-val is deprecated.  Use ros_vision_pipeline-msg:colour_image instead.")
  (colour_image m))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <ColourDepth>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vision_pipeline-msg:depth_image-val is deprecated.  Use ros_vision_pipeline-msg:depth_image instead.")
  (depth_image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColourDepth>) ostream)
  "Serializes a message object of type '<ColourDepth>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'colour_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColourDepth>) istream)
  "Deserializes a message object of type '<ColourDepth>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'colour_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColourDepth>)))
  "Returns string type for a message object of type '<ColourDepth>"
  "ros_vision_pipeline/ColourDepth")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColourDepth)))
  "Returns string type for a message object of type 'ColourDepth"
  "ros_vision_pipeline/ColourDepth")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColourDepth>)))
  "Returns md5sum for a message object of type '<ColourDepth>"
  "c674a567e9981979126deef6a4d60467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColourDepth)))
  "Returns md5sum for a message object of type 'ColourDepth"
  "c674a567e9981979126deef6a4d60467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColourDepth>)))
  "Returns full string definition for message of type '<ColourDepth>"
  (cl:format cl:nil "sensor_msgs/Image colour_image~%sensor_msgs/Image depth_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColourDepth)))
  "Returns full string definition for message of type 'ColourDepth"
  (cl:format cl:nil "sensor_msgs/Image colour_image~%sensor_msgs/Image depth_image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColourDepth>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'colour_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColourDepth>))
  "Converts a ROS message object to a list"
  (cl:list 'ColourDepth
    (cl:cons ':colour_image (colour_image msg))
    (cl:cons ':depth_image (depth_image msg))
))
