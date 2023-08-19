;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::Gaps)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'Gaps (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::GAPS")
  (make-package "CONTEXT_ACTION_FRAMEWORK::GAPS"))

(in-package "ROS")
;;//! \htmlinclude Gaps.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass context_action_framework::Gaps
  :super ros::object
  :slots (_header _gaps ))

(defmethod context_action_framework::Gaps
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gaps __gaps) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _gaps __gaps)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gaps
   (&rest __gaps)
   (if (keywordp (car __gaps))
       (send* _gaps __gaps)
     (progn
       (if __gaps (setq _gaps (car __gaps)))
       _gaps)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; context_action_framework/Gap[] _gaps
    (apply #'+ (send-all _gaps :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; context_action_framework/Gap[] _gaps
     (write-long (length _gaps) s)
     (dolist (elem _gaps)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; context_action_framework/Gap[] _gaps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gaps (let (r) (dotimes (i n) (push (instance context_action_framework::Gap :init) r)) r))
     (dolist (elem- _gaps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get context_action_framework::Gaps :md5sum-) "0ec64f888e2c36be2e073dca5408e8c9")
(setf (get context_action_framework::Gaps :datatype-) "context_action_framework/Gaps")
(setf (get context_action_framework::Gaps :definition-)
      "Header header
context_action_framework/Gap[] gaps
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: context_action_framework/Gap
int8 id

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



(provide :context_action_framework/Gaps "0ec64f888e2c36be2e073dca5408e8c9")


