;; Auto-generated. Do not edit!


(when (boundp 'dnb_msgs::SetString)
  (if (not (find-package "DNB_MSGS"))
    (make-package "DNB_MSGS"))
  (shadow 'SetString (find-package "DNB_MSGS")))
(unless (find-package "DNB_MSGS::SETSTRING")
  (make-package "DNB_MSGS::SETSTRING"))
(unless (find-package "DNB_MSGS::SETSTRINGREQUEST")
  (make-package "DNB_MSGS::SETSTRINGREQUEST"))
(unless (find-package "DNB_MSGS::SETSTRINGRESPONSE")
  (make-package "DNB_MSGS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass dnb_msgs::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod dnb_msgs::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dnb_msgs::SetStringResponse
  :super ros::object
  :slots (_success _message ))

(defmethod dnb_msgs::SetStringResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dnb_msgs::SetString
  :super ros::object
  :slots ())

(setf (get dnb_msgs::SetString :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get dnb_msgs::SetString :datatype-) "dnb_msgs/SetString")
(setf (get dnb_msgs::SetString :request) dnb_msgs::SetStringRequest)
(setf (get dnb_msgs::SetString :response) dnb_msgs::SetStringResponse)

(defmethod dnb_msgs::SetStringRequest
  (:response () (instance dnb_msgs::SetStringResponse :init)))

(setf (get dnb_msgs::SetStringRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get dnb_msgs::SetStringRequest :datatype-) "dnb_msgs/SetStringRequest")
(setf (get dnb_msgs::SetStringRequest :definition-)
      "string data
---
bool success
string message
")

(setf (get dnb_msgs::SetStringResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get dnb_msgs::SetStringResponse :datatype-) "dnb_msgs/SetStringResponse")
(setf (get dnb_msgs::SetStringResponse :definition-)
      "string data
---
bool success
string message
")



(provide :dnb_msgs/SetString "546971982e3fbbd5a41e60fb6432e357")


