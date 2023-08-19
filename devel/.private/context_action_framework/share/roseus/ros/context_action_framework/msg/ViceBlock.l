;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::ViceBlock)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'ViceBlock (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::VICEBLOCK")
  (make-package "CONTEXT_ACTION_FRAMEWORK::VICEBLOCK"))

(in-package "ROS")
;;//! \htmlinclude ViceBlock.msg.html


(defclass context_action_framework::ViceBlock
  :super ros::object
  :slots (_module _clamp _turn_over ))

(defmethod context_action_framework::ViceBlock
  (:init
   (&key
    ((:module __module) 0)
    ((:clamp __clamp) nil)
    ((:turn_over __turn_over) nil)
    )
   (send-super :init)
   (setq _module (round __module))
   (setq _clamp __clamp)
   (setq _turn_over __turn_over)
   self)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:clamp
   (&optional (__clamp :null))
   (if (not (eq __clamp :null)) (setq _clamp __clamp)) _clamp)
  (:turn_over
   (&optional (__turn_over :null))
   (if (not (eq __turn_over :null)) (setq _turn_over __turn_over)) _turn_over)
  (:serialization-length
   ()
   (+
    ;; int8 _module
    1
    ;; bool _clamp
    1
    ;; bool _turn_over
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _module
       (write-byte _module s)
     ;; bool _clamp
       (if _clamp (write-byte -1 s) (write-byte 0 s))
     ;; bool _turn_over
       (if _turn_over (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _module
     (setq _module (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _module 127) (setq _module (- _module 256)))
   ;; bool _clamp
     (setq _clamp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _turn_over
     (setq _turn_over (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get context_action_framework::ViceBlock :md5sum-) "8bc5ee0d433fee744520e4f066921b9b")
(setf (get context_action_framework::ViceBlock :datatype-) "context_action_framework/ViceBlock")
(setf (get context_action_framework::ViceBlock :definition-)
      "# Module enum
int8 module

bool clamp

bool turn_over

")



(provide :context_action_framework/ViceBlock "8bc5ee0d433fee744520e4f066921b9b")


