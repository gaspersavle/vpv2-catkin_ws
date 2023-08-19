; Auto-generated. Do not edit!


(cl:in-package context_action_framework-srv)


;//! \htmlinclude NextAction-request.msg.html

(cl:defclass <NextAction-request> (roslisp-msg-protocol:ros-message)
  ((success_prev
    :reader success_prev
    :initarg :success_prev
    :type cl:boolean
    :initform cl:nil)
   (uuid_prev
    :reader uuid_prev
    :initarg :uuid_prev
    :type cl:string
    :initform "")
   (action_type_prev
    :reader action_type_prev
    :initarg :action_type_prev
    :type cl:fixnum
    :initform 0)
   (action_details
    :reader action_details
    :initarg :action_details
    :type cl:string
    :initform ""))
)

(cl:defclass NextAction-request (<NextAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NextAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NextAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-srv:<NextAction-request> is deprecated: use context_action_framework-srv:NextAction-request instead.")))

(cl:ensure-generic-function 'success_prev-val :lambda-list '(m))
(cl:defmethod success_prev-val ((m <NextAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:success_prev-val is deprecated.  Use context_action_framework-srv:success_prev instead.")
  (success_prev m))

(cl:ensure-generic-function 'uuid_prev-val :lambda-list '(m))
(cl:defmethod uuid_prev-val ((m <NextAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:uuid_prev-val is deprecated.  Use context_action_framework-srv:uuid_prev instead.")
  (uuid_prev m))

(cl:ensure-generic-function 'action_type_prev-val :lambda-list '(m))
(cl:defmethod action_type_prev-val ((m <NextAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:action_type_prev-val is deprecated.  Use context_action_framework-srv:action_type_prev instead.")
  (action_type_prev m))

(cl:ensure-generic-function 'action_details-val :lambda-list '(m))
(cl:defmethod action_details-val ((m <NextAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:action_details-val is deprecated.  Use context_action_framework-srv:action_details instead.")
  (action_details m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NextAction-request>) ostream)
  "Serializes a message object of type '<NextAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success_prev) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid_prev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid_prev))
  (cl:let* ((signed (cl:slot-value msg 'action_type_prev)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_details))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_details))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NextAction-request>) istream)
  "Deserializes a message object of type '<NextAction-request>"
    (cl:setf (cl:slot-value msg 'success_prev) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid_prev) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid_prev) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_type_prev) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_details) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_details) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NextAction-request>)))
  "Returns string type for a service object of type '<NextAction-request>"
  "context_action_framework/NextActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NextAction-request)))
  "Returns string type for a service object of type 'NextAction-request"
  "context_action_framework/NextActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NextAction-request>)))
  "Returns md5sum for a message object of type '<NextAction-request>"
  "02efeedcf42ee81f7c89e3d3ea2145e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NextAction-request)))
  "Returns md5sum for a message object of type 'NextAction-request"
  "02efeedcf42ee81f7c89e3d3ea2145e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NextAction-request>)))
  "Returns full string definition for message of type '<NextAction-request>"
  (cl:format cl:nil "bool success_prev # did the previous action succeed?~%string uuid_prev # prev action UUID~%int8 action_type_prev # prev action_type~%~%# the previous action can return details~%string action_details # json as string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NextAction-request)))
  "Returns full string definition for message of type 'NextAction-request"
  (cl:format cl:nil "bool success_prev # did the previous action succeed?~%string uuid_prev # prev action UUID~%int8 action_type_prev # prev action_type~%~%# the previous action can return details~%string action_details # json as string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NextAction-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'uuid_prev))
     1
     4 (cl:length (cl:slot-value msg 'action_details))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NextAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NextAction-request
    (cl:cons ':success_prev (success_prev msg))
    (cl:cons ':uuid_prev (uuid_prev msg))
    (cl:cons ':action_type_prev (action_type_prev msg))
    (cl:cons ':action_details (action_details msg))
))
;//! \htmlinclude NextAction-response.msg.html

(cl:defclass <NextAction-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform "")
   (action_type
    :reader action_type
    :initarg :action_type
    :type cl:fixnum
    :initform 0)
   (action_block
    :reader action_block
    :initarg :action_block
    :type cl:string
    :initform ""))
)

(cl:defclass NextAction-response (<NextAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NextAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NextAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name context_action_framework-srv:<NextAction-response> is deprecated: use context_action_framework-srv:NextAction-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <NextAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:success-val is deprecated.  Use context_action_framework-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <NextAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:uuid-val is deprecated.  Use context_action_framework-srv:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'action_type-val :lambda-list '(m))
(cl:defmethod action_type-val ((m <NextAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:action_type-val is deprecated.  Use context_action_framework-srv:action_type instead.")
  (action_type m))

(cl:ensure-generic-function 'action_block-val :lambda-list '(m))
(cl:defmethod action_block-val ((m <NextAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader context_action_framework-srv:action_block-val is deprecated.  Use context_action_framework-srv:action_block instead.")
  (action_block m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NextAction-response>) ostream)
  "Serializes a message object of type '<NextAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
  (cl:let* ((signed (cl:slot-value msg 'action_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_block))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_block))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NextAction-response>) istream)
  "Deserializes a message object of type '<NextAction-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_block) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_block) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NextAction-response>)))
  "Returns string type for a service object of type '<NextAction-response>"
  "context_action_framework/NextActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NextAction-response)))
  "Returns string type for a service object of type 'NextAction-response"
  "context_action_framework/NextActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NextAction-response>)))
  "Returns md5sum for a message object of type '<NextAction-response>"
  "02efeedcf42ee81f7c89e3d3ea2145e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NextAction-response)))
  "Returns md5sum for a message object of type 'NextAction-response"
  "02efeedcf42ee81f7c89e3d3ea2145e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NextAction-response>)))
  "Returns full string definition for message of type '<NextAction-response>"
  (cl:format cl:nil "bool success # is able to provide next action~%string uuid~%int8 action_type~%string action_block # json as string~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NextAction-response)))
  "Returns full string definition for message of type 'NextAction-response"
  (cl:format cl:nil "bool success # is able to provide next action~%string uuid~%int8 action_type~%string action_block # json as string~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NextAction-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'uuid))
     1
     4 (cl:length (cl:slot-value msg 'action_block))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NextAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NextAction-response
    (cl:cons ':success (success msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':action_type (action_type msg))
    (cl:cons ':action_block (action_block msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NextAction)))
  'NextAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NextAction)))
  'NextAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NextAction)))
  "Returns string type for a service object of type '<NextAction>"
  "context_action_framework/NextAction")