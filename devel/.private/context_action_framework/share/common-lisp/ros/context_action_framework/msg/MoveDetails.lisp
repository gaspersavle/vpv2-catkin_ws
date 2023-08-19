; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude MoveDetails.msg.html

(cl:defclass <MoveDetails> (roslisp-msg-protocol:ros-message)
  ((todo
    :reader todo
    :initarg :todo
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveDetails (<MoveDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<MoveDetails> is deprecated: use context_action_framework-msg:MoveDetails instead.")))

(cl:ensure-generic-function 'todo-val :lambda-list '(m))
(cl:defmethod todo-val ((m <MoveDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:todo-val is deprecated.  Use context_action_framework-msg:todo instead.")
  (todo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveDetails>) ostream)
  "Serializes a message object of type '<MoveDetails>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'todo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveDetails>) istream)
  "Deserializes a message object of type '<MoveDetails>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'todo) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveDetails>)))
  "Returns string type for a message object of type '<MoveDetails>"
  "context_action_framework/MoveDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveDetails)))
  "Returns string type for a message object of type 'MoveDetails"
  "context_action_framework/MoveDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveDetails>)))
  "Returns md5sum for a message object of type '<MoveDetails>"
  "7247be45b9ecdbee81d0c07f3e7f1ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveDetails)))
  "Returns md5sum for a message object of type 'MoveDetails"
  "7247be45b9ecdbee81d0c07f3e7f1ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveDetails>)))
  "Returns full string definition for message of type '<MoveDetails>"
  (cl:format cl:nil "float32 todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveDetails)))
  "Returns full string definition for message of type 'MoveDetails"
  (cl:format cl:nil "float32 todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveDetails>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveDetails
    (cl:cons ':todo (todo msg))
))
