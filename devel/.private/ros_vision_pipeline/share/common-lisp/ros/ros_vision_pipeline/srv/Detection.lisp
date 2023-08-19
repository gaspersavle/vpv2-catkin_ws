; Auto-generated. Do not edit!


(cl:in-package ros_vision_pipeline-srv)


;//! \htmlinclude Detection-request.msg.html

(cl:defclass <Detection-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Detection-request (<Detection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vision_pipeline-srv:<Detection-request> is deprecated: use ros_vision_pipeline-srv:Detection-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection-request>) ostream)
  "Serializes a message object of type '<Detection-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection-request>) istream)
  "Deserializes a message object of type '<Detection-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection-request>)))
  "Returns string type for a service object of type '<Detection-request>"
  "ros_vision_pipeline/DetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection-request)))
  "Returns string type for a service object of type 'Detection-request"
  "ros_vision_pipeline/DetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection-request>)))
  "Returns md5sum for a message object of type '<Detection-request>"
  "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection-request)))
  "Returns md5sum for a message object of type 'Detection-request"
  "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection-request>)))
  "Returns full string definition for message of type '<Detection-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection-request)))
  "Returns full string definition for message of type 'Detection-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection-request
))
;//! \htmlinclude Detection-response.msg.html

(cl:defclass <Detection-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (detections
    :reader detections
    :initarg :detections
    :type cl:string
    :initform ""))
)

(cl:defclass Detection-response (<Detection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_vision_pipeline-srv:<Detection-response> is deprecated: use ros_vision_pipeline-srv:Detection-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vision_pipeline-srv:success-val is deprecated.  Use ros_vision_pipeline-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <Detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vision_pipeline-srv:image-val is deprecated.  Use ros_vision_pipeline-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <Detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_vision_pipeline-srv:detections-val is deprecated.  Use ros_vision_pipeline-srv:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection-response>) ostream)
  "Serializes a message object of type '<Detection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection-response>) istream)
  "Deserializes a message object of type '<Detection-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detections) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detections) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection-response>)))
  "Returns string type for a service object of type '<Detection-response>"
  "ros_vision_pipeline/DetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection-response)))
  "Returns string type for a service object of type 'Detection-response"
  "ros_vision_pipeline/DetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection-response>)))
  "Returns md5sum for a message object of type '<Detection-response>"
  "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection-response)))
  "Returns md5sum for a message object of type 'Detection-response"
  "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection-response>)))
  "Returns full string definition for message of type '<Detection-response>"
  (cl:format cl:nil "bool success~%sensor_msgs/Image image~%string detections~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection-response)))
  "Returns full string definition for message of type 'Detection-response"
  (cl:format cl:nil "bool success~%sensor_msgs/Image image~%string detections~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:length (cl:slot-value msg 'detections))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection-response
    (cl:cons ':success (success msg))
    (cl:cons ':image (image msg))
    (cl:cons ':detections (detections msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Detection)))
  'Detection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Detection)))
  'Detection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection)))
  "Returns string type for a service object of type '<Detection>"
  "ros_vision_pipeline/Detection")