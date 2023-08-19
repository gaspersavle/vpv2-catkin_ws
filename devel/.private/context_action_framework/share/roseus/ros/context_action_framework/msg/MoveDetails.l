;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::MoveDetails)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'MoveDetails (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::MOVEDETAILS")
  (make-package "CONTEXT_ACTION_FRAMEWORK::MOVEDETAILS"))

(in-package "ROS")
;;//! \htmlinclude MoveDetails.msg.html


(defclass context_action_framework::MoveDetails
  :super ros::object
  :slots (_todo ))

(defmethod context_action_framework::MoveDetails
  (:init
   (&key
    ((:todo __todo) 0.0)
    )
   (send-super :init)
   (setq _todo (float __todo))
   self)
  (:todo
   (&optional __todo)
   (if __todo (setq _todo __todo)) _todo)
  (:serialization-length
   ()
   (+
    ;; float32 _todo
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _todo
       (sys::poke _todo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _todo
     (setq _todo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get context_action_framework::MoveDetails :md5sum-) "7247be45b9ecdbee81d0c07f3e7f1ab8")
(setf (get context_action_framework::MoveDetails :datatype-) "context_action_framework/MoveDetails")
(setf (get context_action_framework::MoveDetails :definition-)
      "float32 todo

")



(provide :context_action_framework/MoveDetails "7247be45b9ecdbee81d0c07f3e7f1ab8")


