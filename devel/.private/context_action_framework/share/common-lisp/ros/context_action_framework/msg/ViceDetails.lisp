; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude ViceDetails.msg.html

(cl:defclass <ViceDetails> (roslisp-msg-protocol:ros-message)
  ((todo
    :reader todo
    :initarg :todo
    :type cl:float
    :initform 0.0))
)

(cl:defclass ViceDetails (<ViceDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ViceDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ViceDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<ViceDetails> is deprecated: use context_action_framework-msg:ViceDetails instead.")))

(cl:ensure-generic-function 'todo-val :lambda-list '(m))
(cl:defmethod todo-val ((m <ViceDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:todo-val is deprecated.  Use context_action_framework-msg:todo instead.")
  (todo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ViceDetails>) ostream)
  "Serializes a message object of type '<ViceDetails>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'todo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ViceDetails>) istream)
  "Deserializes a message object of type '<ViceDetails>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'todo) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ViceDetails>)))
  "Returns string type for a message object of type '<ViceDetails>"
  "context_action_framework/ViceDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ViceDetails)))
  "Returns string type for a message object of type 'ViceDetails"
  "context_action_framework/ViceDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ViceDetails>)))
  "Returns md5sum for a message object of type '<ViceDetails>"
  "7247be45b9ecdbee81d0c07f3e7f1ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ViceDetails)))
  "Returns md5sum for a message object of type 'ViceDetails"
  "7247be45b9ecdbee81d0c07f3e7f1ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ViceDetails>)))
  "Returns full string definition for message of type '<ViceDetails>"
  (cl:format cl:nil "float32 todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ViceDetails)))
  "Returns full string definition for message of type 'ViceDetails"
  (cl:format cl:nil "float32 todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ViceDetails>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ViceDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'ViceDetails
    (cl:cons ':todo (todo msg))
))
