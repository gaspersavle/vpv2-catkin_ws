;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::Gap)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'Gap (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::GAP")
  (make-package "CONTEXT_ACTION_FRAMEWORK::GAP"))

(in-package "ROS")
;;//! \htmlinclude Gap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass context_action_framework::Gap
  :super ros::object
  :slots (_id _from_tf _to_tf _from_depth _to_depth _obb _obb_3d ))

(defmethod context_action_framework::Gap
  (:init
   (&key
    ((:id __id) 0)
    ((:from_tf __from_tf) (instance geometry_msgs::Transform :init))
    ((:to_tf __to_tf) (instance geometry_msgs::Transform :init))
    ((:from_depth __from_depth) 0.0)
    ((:to_depth __to_depth) 0.0)
    ((:obb __obb) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obb_3d __obb_3d) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _from_tf __from_tf)
   (setq _to_tf __to_tf)
   (setq _from_depth (float __from_depth))
   (setq _to_depth (float __to_depth))
   (setq _obb __obb)
   (setq _obb_3d __obb_3d)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
  (:from_depth
   (&optional __from_depth)
   (if __from_depth (setq _from_depth __from_depth)) _from_depth)
  (:to_depth
   (&optional __to_depth)
   (if __to_depth (setq _to_depth __to_depth)) _to_depth)
  (:obb
   (&optional __obb)
   (if __obb (setq _obb __obb)) _obb)
  (:obb_3d
   (&optional __obb_3d)
   (if __obb_3d (setq _obb_3d __obb_3d)) _obb_3d)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; geometry_msgs/Transform _from_tf
    (send _from_tf :serialization-length)
    ;; geometry_msgs/Transform _to_tf
    (send _to_tf :serialization-length)
    ;; float32 _from_depth
    4
    ;; float32 _to_depth
    4
    ;; float32[] _obb
    (* 4    (length _obb)) 4
    ;; float32[] _obb_3d
    (* 4    (length _obb_3d)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; geometry_msgs/Transform _from_tf
       (send _from_tf :serialize s)
     ;; geometry_msgs/Transform _to_tf
       (send _to_tf :serialize s)
     ;; float32 _from_depth
       (sys::poke _from_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _to_depth
       (sys::poke _to_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _obb
     (write-long (length _obb) s)
     (dotimes (i (length _obb))
       (sys::poke (elt _obb i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _obb_3d
     (write-long (length _obb_3d) s)
     (dotimes (i (length _obb_3d))
       (sys::poke (elt _obb_3d i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; geometry_msgs/Transform _from_tf
     (send _from_tf :deserialize buf ptr-) (incf ptr- (send _from_tf :serialization-length))
   ;; geometry_msgs/Transform _to_tf
     (send _to_tf :deserialize buf ptr-) (incf ptr- (send _to_tf :serialization-length))
   ;; float32 _from_depth
     (setq _from_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _to_depth
     (setq _to_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _obb
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obb (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obb i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _obb_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obb_3d (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obb_3d i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get context_action_framework::Gap :md5sum-) "04982284393a444a6964750bac3d43bb")
(setf (get context_action_framework::Gap :datatype-) "context_action_framework/Gap")
(setf (get context_action_framework::Gap :definition-)
      "int8 id

# transform start of levering
geometry_msgs/Transform from_tf

# transform end of levering
geometry_msgs/Transform to_tf

# depth in meters
float32 from_depth
float32 to_depth

# on which detection does the levering start
# context_action_framework/Detection from_det

# on/in which detection does the levering end
# context_action_framework/Detection to_det

# oriented bounding box of gap (meters)
float32[] obb

# 3d oriented bounding box of gap (meters)
float32[] obb_3d
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



(provide :context_action_framework/Gap "04982284393a444a6964750bac3d43bb")


