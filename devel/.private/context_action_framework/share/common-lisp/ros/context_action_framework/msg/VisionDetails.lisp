; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude VisionDetails.msg.html

(cl:defclass <VisionDetails> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (camera_acquisition_stamp
    :reader camera_acquisition_stamp
    :initarg :camera_acquisition_stamp
    :type cl:real
    :initform 0)
   (gap_detection
    :reader gap_detection
    :initarg :gap_detection
    :type cl:boolean
    :initform cl:nil)
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector context_action_framework-msg:Detection)
   :initform (cl:make-array 0 :element-type 'context_action_framework-msg:Detection :initial-element (cl:make-instance 'context_action_framework-msg:Detection)))
   (gaps
    :reader gaps
    :initarg :gaps
    :type (cl:vector context_action_framework-msg:Gap)
   :initform (cl:make-array 0 :element-type 'context_action_framework-msg:Gap :initial-element (cl:make-instance 'context_action_framework-msg:Gap))))
)

(cl:defclass VisionDetails (<VisionDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<VisionDetails> is deprecated: use context_action_framework-msg:VisionDetails instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VisionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:header-val is deprecated.  Use context_action_framework-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'camera_acquisition_stamp-val :lambda-list '(m))
(cl:defmethod camera_acquisition_stamp-val ((m <VisionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:camera_acquisition_stamp-val is deprecated.  Use context_action_framework-msg:camera_acquisition_stamp instead.")
  (camera_acquisition_stamp m))

(cl:ensure-generic-function 'gap_detection-val :lambda-list '(m))
(cl:defmethod gap_detection-val ((m <VisionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:gap_detection-val is deprecated.  Use context_action_framework-msg:gap_detection instead.")
  (gap_detection m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <VisionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:detections-val is deprecated.  Use context_action_framework-msg:detections instead.")
  (detections m))

(cl:ensure-generic-function 'gaps-val :lambda-list '(m))
(cl:defmethod gaps-val ((m <VisionDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:gaps-val is deprecated.  Use context_action_framework-msg:gaps instead.")
  (gaps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionDetails>) ostream)
  "Serializes a message object of type '<VisionDetails>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'camera_acquisition_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'camera_acquisition_stamp) (cl:floor (cl:slot-value msg 'camera_acquisition_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gap_detection) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gaps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gaps))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionDetails>) istream)
  "Deserializes a message object of type '<VisionDetails>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_acquisition_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'gap_detection) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'context_action_framework-msg:Detection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionDetails>)))
  "Returns string type for a message object of type '<VisionDetails>"
  "context_action_framework/VisionDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionDetails)))
  "Returns string type for a message object of type 'VisionDetails"
  "context_action_framework/VisionDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionDetails>)))
  "Returns md5sum for a message object of type '<VisionDetails>"
  "a3eb2653d2dafc55117673781a5c8184")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionDetails)))
  "Returns md5sum for a message object of type 'VisionDetails"
  "a3eb2653d2dafc55117673781a5c8184")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionDetails>)))
  "Returns full string definition for message of type '<VisionDetails>"
  (cl:format cl:nil "Header header~%time camera_acquisition_stamp~%bool gap_detection~%context_action_framework/Detection[] detections~%context_action_framework/Gap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: context_action_framework/Detection~%int64 id~%int64 tracking_id~%~%int8 label    # Label intEnum~%float32 score # segmentation score~%~%# in pixel coords~%geometry_msgs/Transform tf_px   # transform of object center~%float32[] box_px                # non-oriented bounding box~%float32[] obb_px                # oriented bounding box~%float32[] center_px~%float32[] polygon_px~%~%# in world coords (meters)~%geometry_msgs/Transform tf~%float32[] box~%float32[] obb~%float32[] center~%float32[] polygon~%~%# in world coords the cuboid containing the object~%float32[] obb_3d~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: context_action_framework/Gap~%int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionDetails)))
  "Returns full string definition for message of type 'VisionDetails"
  (cl:format cl:nil "Header header~%time camera_acquisition_stamp~%bool gap_detection~%context_action_framework/Detection[] detections~%context_action_framework/Gap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: context_action_framework/Detection~%int64 id~%int64 tracking_id~%~%int8 label    # Label intEnum~%float32 score # segmentation score~%~%# in pixel coords~%geometry_msgs/Transform tf_px   # transform of object center~%float32[] box_px                # non-oriented bounding box~%float32[] obb_px                # oriented bounding box~%float32[] center_px~%float32[] polygon_px~%~%# in world coords (meters)~%geometry_msgs/Transform tf~%float32[] box~%float32[] obb~%float32[] center~%float32[] polygon~%~%# in world coords the cuboid containing the object~%float32[] obb_3d~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: context_action_framework/Gap~%int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionDetails>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gaps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionDetails
    (cl:cons ':header (header msg))
    (cl:cons ':camera_acquisition_stamp (camera_acquisition_stamp msg))
    (cl:cons ':gap_detection (gap_detection msg))
    (cl:cons ':detections (detections msg))
    (cl:cons ':gaps (gaps msg))
))
