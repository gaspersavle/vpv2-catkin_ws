; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude PushBlock.msg.html

(cl:defclass <PushBlock> (roslisp-msg-protocol:ros-message)
  ((module
    :reader module
    :initarg :module
    :type cl:fixnum
    :initform 0)
   (from_tf
    :reader from_tf
    :initarg :from_tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (to_tf
    :reader to_tf
    :initarg :to_tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (obb_3d
    :reader obb_3d
    :initarg :obb_3d
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (robot
    :reader robot
    :initarg :robot
    :type cl:fixnum
    :initform 0)
   (end_effector
    :reader end_effector
    :initarg :end_effector
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PushBlock (<PushBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PushBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PushBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<PushBlock> is deprecated: use context_action_framework-msg:PushBlock instead.")))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <PushBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:module-val is deprecated.  Use context_action_framework-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'from_tf-val :lambda-list '(m))
(cl:defmethod from_tf-val ((m <PushBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:from_tf-val is deprecated.  Use context_action_framework-msg:from_tf instead.")
  (from_tf m))

(cl:ensure-generic-function 'to_tf-val :lambda-list '(m))
(cl:defmethod to_tf-val ((m <PushBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:to_tf-val is deprecated.  Use context_action_framework-msg:to_tf instead.")
  (to_tf m))

(cl:ensure-generic-function 'obb_3d-val :lambda-list '(m))
(cl:defmethod obb_3d-val ((m <PushBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:obb_3d-val is deprecated.  Use context_action_framework-msg:obb_3d instead.")
  (obb_3d m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <PushBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:robot-val is deprecated.  Use context_action_framework-msg:robot instead.")
  (robot m))

(cl:ensure-generic-function 'end_effector-val :lambda-list '(m))
(cl:defmethod end_effector-val ((m <PushBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:end_effector-val is deprecated.  Use context_action_framework-msg:end_effector instead.")
  (end_effector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PushBlock>) ostream)
  "Serializes a message object of type '<PushBlock>"
  (cl:let* ((signed (cl:slot-value msg 'module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'from_tf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to_tf) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obb_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'obb_3d))
  (cl:let* ((signed (cl:slot-value msg 'robot)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'end_effector)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PushBlock>) istream)
  "Deserializes a message object of type '<PushBlock>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'from_tf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to_tf) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obb_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obb_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_effector) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PushBlock>)))
  "Returns string type for a message object of type '<PushBlock>"
  "context_action_framework/PushBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PushBlock)))
  "Returns string type for a message object of type 'PushBlock"
  "context_action_framework/PushBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PushBlock>)))
  "Returns md5sum for a message object of type '<PushBlock>"
  "362401529df743727529b8dd943b4bb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PushBlock)))
  "Returns md5sum for a message object of type 'PushBlock"
  "362401529df743727529b8dd943b4bb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PushBlock>)))
  "Returns full string definition for message of type '<PushBlock>"
  (cl:format cl:nil "# Module enum~%int8 module~%~%# move from transform~%geometry_msgs/Transform from_tf~%~%# move to transform~%geometry_msgs/Transform to_tf~%~%float32[] obb_3d~%~%# Robot enum~%int8 robot~%~%# EndEffector enum~%int8 end_effector~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PushBlock)))
  "Returns full string definition for message of type 'PushBlock"
  (cl:format cl:nil "# Module enum~%int8 module~%~%# move from transform~%geometry_msgs/Transform from_tf~%~%# move to transform~%geometry_msgs/Transform to_tf~%~%float32[] obb_3d~%~%# Robot enum~%int8 robot~%~%# EndEffector enum~%int8 end_effector~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PushBlock>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'from_tf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to_tf))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obb_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PushBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'PushBlock
    (cl:cons ':module (module msg))
    (cl:cons ':from_tf (from_tf msg))
    (cl:cons ':to_tf (to_tf msg))
    (cl:cons ':obb_3d (obb_3d msg))
    (cl:cons ':robot (robot msg))
    (cl:cons ':end_effector (end_effector msg))
))
