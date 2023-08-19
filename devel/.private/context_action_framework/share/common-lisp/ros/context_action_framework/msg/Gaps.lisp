; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude Gaps.msg.html

(cl:defclass <Gaps> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gaps
    :reader gaps
    :initarg :gaps
    :type (cl:vector context_action_framework-msg:Gap)
   :initform (cl:make-array 0 :element-type 'context_action_framework-msg:Gap :initial-element (cl:make-instance 'context_action_framework-msg:Gap))))
)

(cl:defclass Gaps (<Gaps>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gaps>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gaps)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<Gaps> is deprecated: use context_action_framework-msg:Gaps instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Gaps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:header-val is deprecated.  Use context_action_framework-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gaps-val :lambda-list '(m))
(cl:defmethod gaps-val ((m <Gaps>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:gaps-val is deprecated.  Use context_action_framework-msg:gaps instead.")
  (gaps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gaps>) ostream)
  "Serializes a message object of type '<Gaps>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gaps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gaps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gaps>) istream)
  "Deserializes a message object of type '<Gaps>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gaps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gaps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'context_action_framework-msg:Gap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gaps>)))
  "Returns string type for a message object of type '<Gaps>"
  "context_action_framework/Gaps")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gaps)))
  "Returns string type for a message object of type 'Gaps"
  "context_action_framework/Gaps")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gaps>)))
  "Returns md5sum for a message object of type '<Gaps>"
  "0ec64f888e2c36be2e073dca5408e8c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gaps)))
  "Returns md5sum for a message object of type 'Gaps"
  "0ec64f888e2c36be2e073dca5408e8c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gaps>)))
  "Returns full string definition for message of type '<Gaps>"
  (cl:format cl:nil "Header header~%context_action_framework/Gap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: context_action_framework/Gap~%int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gaps)))
  "Returns full string definition for message of type 'Gaps"
  (cl:format cl:nil "Header header~%context_action_framework/Gap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: context_action_framework/Gap~%int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gaps>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gaps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gaps>))
  "Converts a ROS message object to a list"
  (cl:list 'Gaps
    (cl:cons ':header (header msg))
    (cl:cons ':gaps (gaps msg))
))
