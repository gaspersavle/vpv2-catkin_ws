; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude TurnOverDetails.msg.html

(cl:defclass <TurnOverDetails> (roslisp-msg-protocol:ros-message)
  ((todo
    :reader todo
    :initarg :todo
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurnOverDetails (<TurnOverDetails>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurnOverDetails>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurnOverDetails)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<TurnOverDetails> is deprecated: use context_action_framework-msg:TurnOverDetails instead.")))

(cl:ensure-generic-function 'todo-val :lambda-list '(m))
(cl:defmethod todo-val ((m <TurnOverDetails>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:todo-val is deprecated.  Use context_action_framework-msg:todo instead.")
  (todo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurnOverDetails>) ostream)
  "Serializes a message object of type '<TurnOverDetails>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'todo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurnOverDetails>) istream)
  "Deserializes a message object of type '<TurnOverDetails>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'todo) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurnOverDetails>)))
  "Returns string type for a message object of type '<TurnOverDetails>"
  "context_action_framework/TurnOverDetails")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurnOverDetails)))
  "Returns string type for a message object of type 'TurnOverDetails"
  "context_action_framework/TurnOverDetails")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurnOverDetails>)))
  "Returns md5sum for a message object of type '<TurnOverDetails>"
  "7247be45b9ecdbee81d0c07f3e7f1ab8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurnOverDetails)))
  "Returns md5sum for a message object of type 'TurnOverDetails"
  "7247be45b9ecdbee81d0c07f3e7f1ab8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurnOverDetails>)))
  "Returns full string definition for message of type '<TurnOverDetails>"
  (cl:format cl:nil "float32 todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurnOverDetails)))
  "Returns full string definition for message of type 'TurnOverDetails"
  (cl:format cl:nil "float32 todo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurnOverDetails>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurnOverDetails>))
  "Converts a ROS message object to a list"
  (cl:list 'TurnOverDetails
    (cl:cons ':todo (todo msg))
))
