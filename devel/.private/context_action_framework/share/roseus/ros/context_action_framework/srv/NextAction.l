;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::NextAction)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'NextAction (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::NEXTACTION")
  (make-package "CONTEXT_ACTION_FRAMEWORK::NEXTACTION"))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::NEXTACTIONREQUEST")
  (make-package "CONTEXT_ACTION_FRAMEWORK::NEXTACTIONREQUEST"))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::NEXTACTIONRESPONSE")
  (make-package "CONTEXT_ACTION_FRAMEWORK::NEXTACTIONRESPONSE"))

(in-package "ROS")





(defclass context_action_framework::NextActionRequest
  :super ros::object
  :slots (_success_prev _uuid_prev _action_type_prev _action_details ))

(defmethod context_action_framework::NextActionRequest
  (:init
   (&key
    ((:success_prev __success_prev) nil)
    ((:uuid_prev __uuid_prev) "")
    ((:action_type_prev __action_type_prev) 0)
    ((:action_details __action_details) "")
    )
   (send-super :init)
   (setq _success_prev __success_prev)
   (setq _uuid_prev (string __uuid_prev))
   (setq _action_type_prev (round __action_type_prev))
   (setq _action_details (string __action_details))
   self)
  (:success_prev
   (&optional (__success_prev :null))
   (if (not (eq __success_prev :null)) (setq _success_prev __success_prev)) _success_prev)
  (:uuid_prev
   (&optional __uuid_prev)
   (if __uuid_prev (setq _uuid_prev __uuid_prev)) _uuid_prev)
  (:action_type_prev
   (&optional __action_type_prev)
   (if __action_type_prev (setq _action_type_prev __action_type_prev)) _action_type_prev)
  (:action_details
   (&optional __action_details)
   (if __action_details (setq _action_details __action_details)) _action_details)
  (:serialization-length
   ()
   (+
    ;; bool _success_prev
    1
    ;; string _uuid_prev
    4 (length _uuid_prev)
    ;; int8 _action_type_prev
    1
    ;; string _action_details
    4 (length _action_details)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success_prev
       (if _success_prev (write-byte -1 s) (write-byte 0 s))
     ;; string _uuid_prev
       (write-long (length _uuid_prev) s) (princ _uuid_prev s)
     ;; int8 _action_type_prev
       (write-byte _action_type_prev s)
     ;; string _action_details
       (write-long (length _action_details) s) (princ _action_details s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success_prev
     (setq _success_prev (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _uuid_prev
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid_prev (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _action_type_prev
     (setq _action_type_prev (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action_type_prev 127) (setq _action_type_prev (- _action_type_prev 256)))
   ;; string _action_details
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_details (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass context_action_framework::NextActionResponse
  :super ros::object
  :slots (_success _uuid _action_type _action_block ))

(defmethod context_action_framework::NextActionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:uuid __uuid) "")
    ((:action_type __action_type) 0)
    ((:action_block __action_block) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _uuid (string __uuid))
   (setq _action_type (round __action_type))
   (setq _action_block (string __action_block))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:action_type
   (&optional __action_type)
   (if __action_type (setq _action_type __action_type)) _action_type)
  (:action_block
   (&optional __action_block)
   (if __action_block (setq _action_block __action_block)) _action_block)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _uuid
    4 (length _uuid)
    ;; int8 _action_type
    1
    ;; string _action_block
    4 (length _action_block)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;; int8 _action_type
       (write-byte _action_type s)
     ;; string _action_block
       (write-long (length _action_block) s) (princ _action_block s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int8 _action_type
     (setq _action_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action_type 127) (setq _action_type (- _action_type 256)))
   ;; string _action_block
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_block (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass context_action_framework::NextAction
  :super ros::object
  :slots ())

(setf (get context_action_framework::NextAction :md5sum-) "02efeedcf42ee81f7c89e3d3ea2145e9")
(setf (get context_action_framework::NextAction :datatype-) "context_action_framework/NextAction")
(setf (get context_action_framework::NextAction :request) context_action_framework::NextActionRequest)
(setf (get context_action_framework::NextAction :response) context_action_framework::NextActionResponse)

(defmethod context_action_framework::NextActionRequest
  (:response () (instance context_action_framework::NextActionResponse :init)))

(setf (get context_action_framework::NextActionRequest :md5sum-) "02efeedcf42ee81f7c89e3d3ea2145e9")
(setf (get context_action_framework::NextActionRequest :datatype-) "context_action_framework/NextActionRequest")
(setf (get context_action_framework::NextActionRequest :definition-)
      "bool success_prev # did the previous action succeed?
string uuid_prev # prev action UUID
int8 action_type_prev # prev action_type

# the previous action can return details
string action_details # json as string

---
bool success # is able to provide next action
string uuid
int8 action_type
string action_block # json as string


")

(setf (get context_action_framework::NextActionResponse :md5sum-) "02efeedcf42ee81f7c89e3d3ea2145e9")
(setf (get context_action_framework::NextActionResponse :datatype-) "context_action_framework/NextActionResponse")
(setf (get context_action_framework::NextActionResponse :definition-)
      "bool success_prev # did the previous action succeed?
string uuid_prev # prev action UUID
int8 action_type_prev # prev action_type

# the previous action can return details
string action_details # json as string

---
bool success # is able to provide next action
string uuid
int8 action_type
string action_block # json as string


")



(provide :context_action_framework/NextAction "02efeedcf42ee81f7c89e3d3ea2145e9")


