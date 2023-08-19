;; Auto-generated. Do not edit!


(when (boundp 'ros_vision_pipeline::Detection)
  (if (not (find-package "ROS_VISION_PIPELINE"))
    (make-package "ROS_VISION_PIPELINE"))
  (shadow 'Detection (find-package "ROS_VISION_PIPELINE")))
(unless (find-package "ROS_VISION_PIPELINE::DETECTION")
  (make-package "ROS_VISION_PIPELINE::DETECTION"))
(unless (find-package "ROS_VISION_PIPELINE::DETECTIONREQUEST")
  (make-package "ROS_VISION_PIPELINE::DETECTIONREQUEST"))
(unless (find-package "ROS_VISION_PIPELINE::DETECTIONRESPONSE")
  (make-package "ROS_VISION_PIPELINE::DETECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass ros_vision_pipeline::DetectionRequest
  :super ros::object
  :slots ())

(defmethod ros_vision_pipeline::DetectionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ros_vision_pipeline::DetectionResponse
  :super ros::object
  :slots (_success _image _detections ))

(defmethod ros_vision_pipeline::DetectionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:detections __detections) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _image __image)
   (setq _detections (string __detections))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:detections
   (&optional __detections)
   (if __detections (setq _detections __detections)) _detections)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; string _detections
    4 (length _detections)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; string _detections
       (write-long (length _detections) s) (princ _detections s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; string _detections
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detections (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_vision_pipeline::Detection
  :super ros::object
  :slots ())

(setf (get ros_vision_pipeline::Detection :md5sum-) "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(setf (get ros_vision_pipeline::Detection :datatype-) "ros_vision_pipeline/Detection")
(setf (get ros_vision_pipeline::Detection :request) ros_vision_pipeline::DetectionRequest)
(setf (get ros_vision_pipeline::Detection :response) ros_vision_pipeline::DetectionResponse)

(defmethod ros_vision_pipeline::DetectionRequest
  (:response () (instance ros_vision_pipeline::DetectionResponse :init)))

(setf (get ros_vision_pipeline::DetectionRequest :md5sum-) "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(setf (get ros_vision_pipeline::DetectionRequest :datatype-) "ros_vision_pipeline/DetectionRequest")
(setf (get ros_vision_pipeline::DetectionRequest :definition-)
      "---
bool success
sensor_msgs/Image image
string detections

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
")

(setf (get ros_vision_pipeline::DetectionResponse :md5sum-) "e23fc2624ba0a7cfc8ed0d73a73b6fae")
(setf (get ros_vision_pipeline::DetectionResponse :datatype-) "ros_vision_pipeline/DetectionResponse")
(setf (get ros_vision_pipeline::DetectionResponse :definition-)
      "---
bool success
sensor_msgs/Image image
string detections

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
")



(provide :ros_vision_pipeline/Detection "e23fc2624ba0a7cfc8ed0d73a73b6fae")


