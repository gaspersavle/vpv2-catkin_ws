; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude TurnOverBlock.msg.html

(cl:defclass <TurnOverBlock> (roslisp-msg-protocol:ros-message)
  ((module
    :reader module
    :initarg :module
    :type cl:fixnum
    :initform 0)
   (tf
    :reader tf
    :initarg :tf
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

(cl:defclass TurnOverBlock (<TurnOverBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnOverBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnOverBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<TurnOverBlock> is deprecated: use context_action_framework-msg:TurnOverBlock instead.")))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <TurnOverBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:module-val is deprecated.  Use context_action_framework-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'tf-val :lambda-list '(m))
(cl:defmethod tf-val ((m <TurnOverBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:tf-val is deprecated.  Use context_action_framework-msg:tf instead.")
  (tf m))

(cl:ensure-generic-function 'obb_3d-val :lambda-list '(m))
(cl:defmethod obb_3d-val ((m <TurnOverBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:obb_3d-val is deprecated.  Use context_action_framework-msg:obb_3d instead.")
  (obb_3d m))

(cl:ensure-generic-function 'robot-val :lambda-list '(m))
(cl:defmethod robot-val ((m <TurnOverBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:robot-val is deprecated.  Use context_action_framework-msg:robot instead.")
  (robot m))

(cl:ensure-generic-function 'end_effector-val :lambda-list '(m))
(cl:defmethod end_effector-val ((m <TurnOverBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:end_effector-val is deprecated.  Use context_action_framework-msg:end_effector instead.")
  (end_effector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnOverBlock>) ostream)
  "Serializes a message object of type '<TurnOverBlock>"
  (cl:let* ((signed (cl:slot-value msg 'module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnOverBlock>) istream)
  "Deserializes a message object of type '<TurnOverBlock>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnOverBlock>)))
  "Returns string type for a message object of type '<TurnOverBlock>"
  "context_action_framework/TurnOverBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnOverBlock)))
  "Returns string type for a message object of type 'TurnOverBlock"
  "context_action_framework/TurnOverBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnOverBlock>)))
  "Returns md5sum for a message object of type '<TurnOverBlock>"
  "8bd3d6287c976434df33935bcd8b11ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnOverBlock)))
  "Returns md5sum for a message object of type 'TurnOverBlock"
  "8bd3d6287c976434df33935bcd8b11ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnOverBlock>)))
  "Returns full string definition for message of type '<TurnOverBlock>"
  (cl:format cl:nil "# Module enum~%int8 module~%~%# transform of object (center)~%geometry_msgs/Transform tf~%~%float32[] obb_3d~%~%# Robot enum~%int8 robot~%~%# EndEffector enum~%int8 end_effector~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnOverBlock)))
  "Returns full string definition for message of type 'TurnOverBlock"
  (cl:format cl:nil "# Module enum~%int8 module~%~%# transform of object (center)~%geometry_msgs/Transform tf~%~%float32[] obb_3d~%~%# Robot enum~%int8 robot~%~%# EndEffector enum~%int8 end_effector~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnOverBlock>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obb_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnOverBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnOverBlock
    (cl:cons ':module (module msg))
    (cl:cons ':tf (tf msg))
    (cl:cons ':obb_3d (obb_3d msg))
    (cl:cons ':robot (robot msg))
    (cl:cons ':end_effector (end_effector msg))
))
