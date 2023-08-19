;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::PushBlock)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'PushBlock (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::PUSHBLOCK")
  (make-package "CONTEXT_ACTION_FRAMEWORK::PUSHBLOCK"))

(in-package "ROS")
;;//! \htmlinclude PushBlock.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass context_action_framework::PushBlock
  :super ros::object
  :slots (_module _from_tf _to_tf _obb_3d _robot _end_effector ))

(defmethod context_action_framework::PushBlock
  (:init
   (&key
    ((:module __module) 0)
    ((:from_tf __from_tf) (instance geometry_msgs::Transform :init))
    ((:to_tf __to_tf) (instance geometry_msgs::Transform :init))
    ((:obb_3d __obb_3d) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:robot __robot) 0)
    ((:end_effector __end_effector) 0)
    )
   (send-super :init)
   (setq _module (round __module))
   (setq _from_tf __from_tf)
   (setq _to_tf __to_tf)
   (setq _obb_3d __obb_3d)
   (setq _robot (round __robot))
   (setq _end_effector (round __end_effector))
   self)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:from_tf
   (&rest __from_tf)
   (if (keywordp (car __from_tf))
       (send* _from_tf __from_tf)
     (progn
       (if __from_tf (setq _from_tf (car __from_tf)))
       _from_tf)))
  (:to_tf
   (&rest __to_tf)
   (if (keywordp (car __to_tf))
       (send* _to_tf __to_tf)
     (progn
       (if __to_tf (setq _to_tf (car __to_tf)))
       _to_tf)))
  (:obb_3d
   (&optional __obb_3d)
   (if __obb_3d (setq _obb_3d __obb_3d)) _obb_3d)
  (:robot
   (&optional __robot)
   (if __robot (setq _robot __robot)) _robot)
  (:end_effector
   (&optional __end_effector)
   (if __end_effector (setq _end_effector __end_effector)) _end_effector)
  (:serialization-length
   ()
   (+
    ;; int8 _module
    1
    ;; geometry_msgs/Transform _from_tf
    (send _from_tf :serialization-length)
    ;; geometry_msgs/Transform _to_tf
    (send _to_tf :serialization-length)
    ;; float32[] _obb_3d
    (* 4    (length _obb_3d)) 4
    ;; int8 _robot
    1
    ;; int8 _end_effector
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _module
       (write-byte _module s)
     ;; geometry_msgs/Transform _from_tf
       (send _from_tf :serialize s)
     ;; geometry_msgs/Transform _to_tf
       (send _to_tf :serialize s)
     ;; float32[] _obb_3d
     (write-long (length _obb_3d) s)
     (dotimes (i (length _obb_3d))
       (sys::poke (elt _obb_3d i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int8 _robot
       (write-byte _robot s)
     ;; int8 _end_effector
       (write-byte _end_effector s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _module
     (setq _module (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _module 127) (setq _module (- _module 256)))
   ;; geometry_msgs/Transform _from_tf
     (send _from_tf :deserialize buf ptr-) (incf ptr- (send _from_tf :serialization-length))
   ;; geometry_msgs/Transform _to_tf
     (send _to_tf :deserialize buf ptr-) (incf ptr- (send _to_tf :serialization-length))
   ;; float32[] _obb_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obb_3d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obb_3d i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int8 _robot
     (setq _robot (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _robot 127) (setq _robot (- _robot 256)))
   ;; int8 _end_effector
     (setq _end_effector (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _end_effector 127) (setq _end_effector (- _end_effector 256)))
   ;;
   self)
  )

(setf (get context_action_framework::PushBlock :md5sum-) "362401529df743727529b8dd943b4bb4")
(setf (get context_action_framework::PushBlock :datatype-) "context_action_framework/PushBlock")
(setf (get context_action_framework::PushBlock :definition-)
      "# Module enum
int8 module

# move from transform
geometry_msgs/Transform from_tf

# move to transform
geometry_msgs/Transform to_tf

float32[] obb_3d

# Robot enum
int8 robot

# EndEffector enum
int8 end_effector

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



(provide :context_action_framework/PushBlock "362401529df743727529b8dd943b4bb4")


