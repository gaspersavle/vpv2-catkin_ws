;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::VisionBlock)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'VisionBlock (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::VISIONBLOCK")
  (make-package "CONTEXT_ACTION_FRAMEWORK::VISIONBLOCK"))

(in-package "ROS")
;;//! \htmlinclude VisionBlock.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass context_action_framework::VisionBlock
  :super ros::object
  :slots (_camera _module _tf _gap_detection ))

(defmethod context_action_framework::VisionBlock
  (:init
   (&key
    ((:camera __camera) 0)
    ((:module __module) 0)
    ((:tf __tf) (instance geometry_msgs::Transform :init))
    ((:gap_detection __gap_detection) nil)
    )
   (send-super :init)
   (setq _camera (round __camera))
   (setq _module (round __module))
   (setq _tf __tf)
   (setq _gap_detection __gap_detection)
   self)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:gap_detection
   (&optional (__gap_detection :null))
   (if (not (eq __gap_detection :null)) (setq _gap_detection __gap_detection)) _gap_detection)
  (:serialization-length
   ()
   (+
    ;; int8 _camera
    1
    ;; int8 _module
    1
    ;; geometry_msgs/Transform _tf
    (send _tf :serialization-length)
    ;; bool _gap_detection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _camera
       (write-byte _camera s)
     ;; int8 _module
       (write-byte _module s)
     ;; geometry_msgs/Transform _tf
       (send _tf :serialize s)
     ;; bool _gap_detection
       (if _gap_detection (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _camera
     (setq _camera (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _camera 127) (setq _camera (- _camera 256)))
   ;; int8 _module
     (setq _module (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _module 127) (setq _module (- _module 256)))
   ;; geometry_msgs/Transform _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;; bool _gap_detection
     (setq _gap_detection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get context_action_framework::VisionBlock :md5sum-) "0f331af18bd7868ca6460c04549f4c84")
(setf (get context_action_framework::VisionBlock :datatype-) "context_action_framework/VisionBlock")
(setf (get context_action_framework::VisionBlock :definition-)
      "# Camera enum
int8 camera

# Module enum
int8 module

# camera transform
geometry_msgs/Transform tf

# request gap detection True/False
bool gap_detection
================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :context_action_framework/VisionBlock "0f331af18bd7868ca6460c04549f4c84")


