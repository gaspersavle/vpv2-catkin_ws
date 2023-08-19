; Auto-generated. Do not edit!


(cl:in-package context_action_framework-srv)


;//! \htmlinclude VisionDetection-request.msg.html

(cl:defclass <VisionDetection-request> (roslisp-msg-protocol:ros-message)
  ((camera
    :reader camera
    :initarg :camera
    :type cl:fixnum
    :initform 0)
   (gap_detection
    :reader gap_detection
    :initarg :gap_detection
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VisionDetection-request (<VisionDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-srv:<VisionDetection-request> is deprecated: use context_action_framework-srv:VisionDetection-request instead.")))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <VisionDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:camera-val is deprecated.  Use context_action_framework-srv:camera instead.")
  (camera m))

(cl:ensure-generic-function 'gap_detection-val :lambda-list '(m))
(cl:defmethod gap_detection-val ((m <VisionDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:gap_detection-val is deprecated.  Use context_action_framework-srv:gap_detection instead.")
  (gap_detection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionDetection-request>) ostream)
  "Serializes a message object of type '<VisionDetection-request>"
  (cl:let* ((signed (cl:slot-value msg 'camera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gap_detection) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionDetection-request>) istream)
  "Deserializes a message object of type '<VisionDetection-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'gap_detection) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionDetection-request>)))
  "Returns string type for a service object of type '<VisionDetection-request>"
  "context_action_framework/VisionDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionDetection-request)))
  "Returns string type for a service object of type 'VisionDetection-request"
  "context_action_framework/VisionDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionDetection-request>)))
  "Returns md5sum for a message object of type '<VisionDetection-request>"
  "11960e268b9d7417534a4507aec91a66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionDetection-request)))
  "Returns md5sum for a message object of type 'VisionDetection-request"
  "11960e268b9d7417534a4507aec91a66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionDetection-request>)))
  "Returns full string definition for message of type '<VisionDetection-request>"
  (cl:format cl:nil "int8 camera # from types Camera~%bool gap_detection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionDetection-request)))
  "Returns full string definition for message of type 'VisionDetection-request"
  (cl:format cl:nil "int8 camera # from types Camera~%bool gap_detection~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionDetection-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionDetection-request
    (cl:cons ':camera (camera msg))
    (cl:cons ':gap_detection (gap_detection msg))
))
;//! \htmlinclude VisionDetection-response.msg.html

(cl:defclass <VisionDetection-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (vision_details
    :reader vision_details
    :initarg :vision_details
    :type context_action_framework-msg:VisionDetails
    :initform (cl:make-instance 'context_action_framework-msg:VisionDetails))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass VisionDetection-response (<VisionDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-srv:<VisionDetection-response> is deprecated: use context_action_framework-srv:VisionDetection-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VisionDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:success-val is deprecated.  Use context_action_framework-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'vision_details-val :lambda-list '(m))
(cl:defmethod vision_details-val ((m <VisionDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:vision_details-val is deprecated.  Use context_action_framework-srv:vision_details instead.")
  (vision_details m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <VisionDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:image-val is deprecated.  Use context_action_framework-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionDetection-response>) ostream)
  "Serializes a message object of type '<VisionDetection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vision_details) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionDetection-response>) istream)
  "Deserializes a message object of type '<VisionDetection-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vision_details) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionDetection-response>)))
  "Returns string type for a service object of type '<VisionDetection-response>"
  "context_action_framework/VisionDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionDetection-response)))
  "Returns string type for a service object of type 'VisionDetection-response"
  "context_action_framework/VisionDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionDetection-response>)))
  "Returns md5sum for a message object of type '<VisionDetection-response>"
  "11960e268b9d7417534a4507aec91a66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionDetection-response)))
  "Returns md5sum for a message object of type 'VisionDetection-response"
  "11960e268b9d7417534a4507aec91a66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionDetection-response>)))
  "Returns full string definition for message of type '<VisionDetection-response>"
  (cl:format cl:nil "bool success~%context_action_framework/VisionDetails vision_details~%sensor_msgs/Image image~%~%================================================================================~%MSG: context_action_framework/VisionDetails~%Header header~%time camera_acquisition_stamp~%bool gap_detection~%context_action_framework/Detection[] detections~%context_action_framework/Gap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: context_action_framework/Detection~%int64 id~%int64 tracking_id~%~%int8 label    # Label intEnum~%float32 score # segmentation score~%~%# in pixel coords~%geometry_msgs/Transform tf_px   # transform of object center~%float32[] box_px                # non-oriented bounding box~%float32[] obb_px                # oriented bounding box~%float32[] center_px~%float32[] polygon_px~%~%# in world coords (meters)~%geometry_msgs/Transform tf~%float32[] box~%float32[] obb~%float32[] center~%float32[] polygon~%~%# in world coords the cuboid containing the object~%float32[] obb_3d~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: context_action_framework/Gap~%int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionDetection-response)))
  "Returns full string definition for message of type 'VisionDetection-response"
  (cl:format cl:nil "bool success~%context_action_framework/VisionDetails vision_details~%sensor_msgs/Image image~%~%================================================================================~%MSG: context_action_framework/VisionDetails~%Header header~%time camera_acquisition_stamp~%bool gap_detection~%context_action_framework/Detection[] detections~%context_action_framework/Gap[] gaps~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: context_action_framework/Detection~%int64 id~%int64 tracking_id~%~%int8 label    # Label intEnum~%float32 score # segmentation score~%~%# in pixel coords~%geometry_msgs/Transform tf_px   # transform of object center~%float32[] box_px                # non-oriented bounding box~%float32[] obb_px                # oriented bounding box~%float32[] center_px~%float32[] polygon_px~%~%# in world coords (meters)~%geometry_msgs/Transform tf~%float32[] box~%float32[] obb~%float32[] center~%float32[] polygon~%~%# in world coords the cuboid containing the object~%float32[] obb_3d~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: context_action_framework/Gap~%int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionDetection-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vision_details))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionDetection-response
    (cl:cons ':success (success msg))
    (cl:cons ':vision_details (vision_details msg))
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VisionDetection)))
  'VisionDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VisionDetection)))
  'VisionDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionDetection)))
  "Returns string type for a service object of type '<VisionDetection>"
  "context_action_framework/VisionDetection")