; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude VisionBlock.msg.html

(cl:defclass <VisionBlock> (roslisp-msg-protocol:ros-message)
  ((camera
    :reader camera
    :initarg :camera
    :type cl:fixnum
    :initform 0)
   (module
    :reader module
    :initarg :module
    :type cl:fixnum
    :initform 0)
   (tf
    :reader tf
    :initarg :tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (gap_detection
    :reader gap_detection
    :initarg :gap_detection
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VisionBlock (<VisionBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<VisionBlock> is deprecated: use context_action_framework-msg:VisionBlock instead.")))

(cl:ensure-generic-function 'camera-val :lambda-list '(m))
(cl:defmethod camera-val ((m <VisionBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:camera-val is deprecated.  Use context_action_framework-msg:camera instead.")
  (camera m))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <VisionBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:module-val is deprecated.  Use context_action_framework-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'tf-val :lambda-list '(m))
(cl:defmethod tf-val ((m <VisionBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:tf-val is deprecated.  Use context_action_framework-msg:tf instead.")
  (tf m))

(cl:ensure-generic-function 'gap_detection-val :lambda-list '(m))
(cl:defmethod gap_detection-val ((m <VisionBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:gap_detection-val is deprecated.  Use context_action_framework-msg:gap_detection instead.")
  (gap_detection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionBlock>) ostream)
  "Serializes a message object of type '<VisionBlock>"
  (cl:let* ((signed (cl:slot-value msg 'camera)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gap_detection) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionBlock>) istream)
  "Deserializes a message object of type '<VisionBlock>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf) istream)
    (cl:setf (cl:slot-value msg 'gap_detection) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionBlock>)))
  "Returns string type for a message object of type '<VisionBlock>"
  "context_action_framework/VisionBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionBlock)))
  "Returns string type for a message object of type 'VisionBlock"
  "context_action_framework/VisionBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionBlock>)))
  "Returns md5sum for a message object of type '<VisionBlock>"
  "0f331af18bd7868ca6460c04549f4c84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionBlock)))
  "Returns md5sum for a message object of type 'VisionBlock"
  "0f331af18bd7868ca6460c04549f4c84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionBlock>)))
  "Returns full string definition for message of type '<VisionBlock>"
  (cl:format cl:nil "# Camera enum~%int8 camera~%~%# Module enum~%int8 module~%~%# camera transform~%geometry_msgs/Transform tf~%~%# request gap detection True/False~%bool gap_detection~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionBlock)))
  "Returns full string definition for message of type 'VisionBlock"
  (cl:format cl:nil "# Camera enum~%int8 camera~%~%# Module enum~%int8 module~%~%# camera transform~%geometry_msgs/Transform tf~%~%# request gap detection True/False~%bool gap_detection~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionBlock>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionBlock
    (cl:cons ':camera (camera msg))
    (cl:cons ':module (module msg))
    (cl:cons ':tf (tf msg))
    (cl:cons ':gap_detection (gap_detection msg))
))
