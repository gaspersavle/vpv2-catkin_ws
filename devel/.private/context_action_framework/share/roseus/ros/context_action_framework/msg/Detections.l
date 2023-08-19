;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::Detections)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'Detections (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::DETECTIONS")
  (make-package "CONTEXT_ACTION_FRAMEWORK::DETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude Detections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass context_action_framework::Detections
  :super ros::object
  :slots (_header _camera_acquisition_stamp _detections ))

(defmethod context_action_framework::Detections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:camera_acquisition_stamp __camera_acquisition_stamp) (instance ros::time :init))
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _camera_acquisition_stamp __camera_acquisition_stamp)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:camera_acquisition_stamp
   (&optional __camera_acquisition_stamp)
   (if __camera_acquisition_stamp (setq _camera_acquisition_stamp __camera_acquisition_stamp)) _camera_acquisition_stamp)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _camera_acquisition_stamp
    8
    ;; context_action_framework/Detection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _camera_acquisition_stamp
       (write-long (send _camera_acquisition_stamp :sec) s) (write-long (send _camera_acquisition_stamp :nsec) s)
     ;; context_action_framework/Detection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _camera_acquisition_stamp
     (send _camera_acquisition_stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _camera_acquisition_stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; context_action_framework/Detection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance context_action_framework::Detection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get context_action_framework::Detections :md5sum-) "5d4d5bef425fa42fd27b9e6117794d66")
(setf (get context_action_framework::Detections :datatype-) "context_action_framework/Detections")
(setf (get context_action_framework::Detections :definition-)
      "Header header
time camera_acquisition_stamp
context_action_framework/Detection[] detections
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
MSG: context_action_framework/Detection
int64 id
int64 tracking_id

int8 label    # Label intEnum
float32 score # segmentation score

# in pixel coords
geometry_msgs/Transform tf_px   # transform of object center
float32[] box_px                # non-oriented bounding box
float32[] obb_px                # oriented bounding box
float32[] center_px
float32[] polygon_px

# in world coords (meters)
geometry_msgs/Transform tf
float32[] box
float32[] obb
float32[] center
float32[] polygon

# in world coords the cuboid containing the object
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



(provide :context_action_framework/Detections "5d4d5bef425fa42fd27b9e6117794d66")


