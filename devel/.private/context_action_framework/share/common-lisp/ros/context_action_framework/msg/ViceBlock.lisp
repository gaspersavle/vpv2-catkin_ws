; Auto-generated. Do not edit!


(cl:in-package context_action_framework-msg)


;//! \htmlinclude ViceBlock.msg.html

(cl:defclass <ViceBlock> (roslisp-msg-protocol:ros-message)
  ((module
    :reader module
    :initarg :module
    :type cl:fixnum
    :initform 0)
   (clamp
    :reader clamp
    :initarg :clamp
    :type cl:boolean
    :initform cl:nil)
   (turn_over
    :reader turn_over
    :initarg :turn_over
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ViceBlock (<ViceBlock>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ViceBlock>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ViceBlock)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-msg:<ViceBlock> is deprecated: use context_action_framework-msg:ViceBlock instead.")))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <ViceBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:module-val is deprecated.  Use context_action_framework-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'clamp-val :lambda-list '(m))
(cl:defmethod clamp-val ((m <ViceBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:clamp-val is deprecated.  Use context_action_framework-msg:clamp instead.")
  (clamp m))

(cl:ensure-generic-function 'turn_over-val :lambda-list '(m))
(cl:defmethod turn_over-val ((m <ViceBlock>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-msg:turn_over-val is deprecated.  Use context_action_framework-msg:turn_over instead.")
  (turn_over m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ViceBlock>) ostream)
  "Serializes a message object of type '<ViceBlock>"
  (cl:let* ((signed (cl:slot-value msg 'module)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clamp) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_over) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ViceBlock>) istream)
  "Deserializes a message object of type '<ViceBlock>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'clamp) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'turn_over) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ViceBlock>)))
  "Returns string type for a message object of type '<ViceBlock>"
  "context_action_framework/ViceBlock")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ViceBlock)))
  "Returns string type for a message object of type 'ViceBlock"
  "context_action_framework/ViceBlock")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ViceBlock>)))
  "Returns md5sum for a message object of type '<ViceBlock>"
  "8bc5ee0d433fee744520e4f066921b9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ViceBlock)))
  "Returns md5sum for a message object of type 'ViceBlock"
  "8bc5ee0d433fee744520e4f066921b9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ViceBlock>)))
  "Returns full string definition for message of type '<ViceBlock>"
  (cl:format cl:nil "# Module enum~%int8 module~%~%bool clamp~%~%bool turn_over~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ViceBlock)))
  "Returns full string definition for message of type 'ViceBlock"
  (cl:format cl:nil "# Module enum~%int8 module~%~%bool clamp~%~%bool turn_over~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ViceBlock>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ViceBlock>))
  "Converts a ROS message object to a list"
  (cl:list 'ViceBlock
    (cl:cons ':module (module msg))
    (cl:cons ':clamp (clamp msg))
    (cl:cons ':turn_over (turn_over msg))
))
