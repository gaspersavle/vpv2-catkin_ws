; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude Gap.msg.html

(cl:defclass <Gap> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
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
   (from_depth
    :reader from_depth
    :initarg :from_depth
    :type cl:float
    :initform 0.0)
   (to_depth
    :reader to_depth
    :initarg :to_depth
    :type cl:float
    :initform 0.0)
   (obb
    :reader obb
    :initarg :obb
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (obb_3d
    :reader obb_3d
    :initarg :obb_3d
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Gap (<Gap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<Gap> is deprecated: use context_action_framework-msg:Gap instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:id-val is deprecated.  Use context_action_framework-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'from_tf-val :lambda-list '(m))
(cl:defmethod from_tf-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:from_tf-val is deprecated.  Use context_action_framework-msg:from_tf instead.")
  (from_tf m))

(cl:ensure-generic-function 'to_tf-val :lambda-list '(m))
(cl:defmethod to_tf-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:to_tf-val is deprecated.  Use context_action_framework-msg:to_tf instead.")
  (to_tf m))

(cl:ensure-generic-function 'from_depth-val :lambda-list '(m))
(cl:defmethod from_depth-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:from_depth-val is deprecated.  Use context_action_framework-msg:from_depth instead.")
  (from_depth m))

(cl:ensure-generic-function 'to_depth-val :lambda-list '(m))
(cl:defmethod to_depth-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:to_depth-val is deprecated.  Use context_action_framework-msg:to_depth instead.")
  (to_depth m))

(cl:ensure-generic-function 'obb-val :lambda-list '(m))
(cl:defmethod obb-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:obb-val is deprecated.  Use context_action_framework-msg:obb instead.")
  (obb m))

(cl:ensure-generic-function 'obb_3d-val :lambda-list '(m))
(cl:defmethod obb_3d-val ((m <Gap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:obb_3d-val is deprecated.  Use context_action_framework-msg:obb_3d instead.")
  (obb_3d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gap>) ostream)
  "Serializes a message object of type '<Gap>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'from_tf) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'to_tf) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'from_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'to_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obb))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'obb))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gap>) istream)
  "Deserializes a message object of type '<Gap>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'from_tf) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'to_tf) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'from_depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'to_depth) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obb) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obb)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gap>)))
  "Returns string type for a message object of type '<Gap>"
  "context_action_framework/Gap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gap)))
  "Returns string type for a message object of type 'Gap"
  "context_action_framework/Gap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gap>)))
  "Returns md5sum for a message object of type '<Gap>"
  "04982284393a444a6964750bac3d43bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gap)))
  "Returns md5sum for a message object of type 'Gap"
  "04982284393a444a6964750bac3d43bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gap>)))
  "Returns full string definition for message of type '<Gap>"
  (cl:format cl:nil "int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gap)))
  "Returns full string definition for message of type 'Gap"
  (cl:format cl:nil "int8 id~%~%# transform start of levering~%geometry_msgs/Transform from_tf~%~%# transform end of levering~%geometry_msgs/Transform to_tf~%~%# depth in meters~%float32 from_depth~%float32 to_depth~%~%# on which detection does the levering start~%# context_action_framework/Detection from_det~%~%# on/in which detection does the levering end~%# context_action_framework/Detection to_det~%~%# oriented bounding box of gap (meters)~%float32[] obb~%~%# 3d oriented bounding box of gap (meters)~%float32[] obb_3d~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gap>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'from_tf))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'to_tf))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obb) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obb_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gap>))
  "Converts a ROS message object to a list"
  (cl:list 'Gap
    (cl:cons ':id (id msg))
    (cl:cons ':from_tf (from_tf msg))
    (cl:cons ':to_tf (to_tf msg))
    (cl:cons ':from_depth (from_depth msg))
    (cl:cons ':to_depth (to_depth msg))
    (cl:cons ':obb (obb msg))
    (cl:cons ':obb_3d (obb_3d msg))
))
