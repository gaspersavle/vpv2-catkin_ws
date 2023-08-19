;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::VisionDetection)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'VisionDetection (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::VISIONDETECTION")
  (make-package "CONTEXT_ACTION_FRAMEWORK::VISIONDETECTION"))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::VISIONDETECTIONREQUEST")
  (make-package "CONTEXT_ACTION_FRAMEWORK::VISIONDETECTIONREQUEST"))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::VISIONDETECTIONRESPONSE")
  (make-package "CONTEXT_ACTION_FRAMEWORK::VISIONDETECTIONRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass context_action_framework::VisionDetectionRequest
  :super ros::object
  :slots (_camera _gap_detection ))

(defmethod context_action_framework::VisionDetectionRequest
  (:init
   (&key
    ((:camera __camera) 0)
    ((:gap_detection __gap_detection) nil)
    )
   (send-super :init)
   (setq _camera (round __camera))
   (setq _gap_detection __gap_detection)
   self)
  (:camera
   (&optional __camera)
   (if __camera (setq _camera __camera)) _camera)
  (:gap_detection
   (&optional (__gap_detection :null))
   (if (not (eq __gap_detection :null)) (setq _gap_detection __gap_detection)) _gap_detection)
  (:serialization-length
   ()
   (+
    ;; int8 _camera
    1
    ;; bool _gap_detection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _camera
       (write-byte _camera s)
     ;; bool _gap_detection
       (if _gap_detection (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _camera
     (setq _camera (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _camera 127) (setq _camera (- _camera 256)))
   ;; bool _gap_detection
     (setq _gap_detection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass context_action_framework::VisionDetectionResponse
  :super ros::object
  :slots (_success _vision_details _image ))

(defmethod context_action_framework::VisionDetectionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:vision_details __vision_details) (instance context_action_framework::VisionDetails :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _vision_details __vision_details)
   (setq _image __image)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:vision_details
   (&rest __vision_details)
   (if (keywordp (car __vision_details))
       (send* _vision_details __vision_details)
     (progn
       (if __vision_details (setq _vision_details (car __vision_details)))
       _vision_details)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; context_action_framework/VisionDetails _vision_details
    (send _vision_details :serialization-length)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; context_action_framework/VisionDetails _vision_details
       (send _vision_details :serialize s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; context_action_framework/VisionDetails _vision_details
     (send _vision_details :deserialize buf ptr-) (incf ptr- (send _vision_details :serialization-length))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass context_action_framework::VisionDetection
  :super ros::object
  :slots ())

(setf (get context_action_framework::VisionDetection :md5sum-) "11960e268b9d7417534a4507aec91a66")
(setf (get context_action_framework::VisionDetection :datatype-) "context_action_framework/VisionDetection")
(setf (get context_action_framework::VisionDetection :request) context_action_framework::VisionDetectionRequest)
(setf (get context_action_framework::VisionDetection :response) context_action_framework::VisionDetectionResponse)

(defmethod context_action_framework::VisionDetectionRequest
  (:response () (instance context_action_framework::VisionDetectionResponse :init)))

(setf (get context_action_framework::VisionDetectionRequest :md5sum-) "11960e268b9d7417534a4507aec91a66")
(setf (get context_action_framework::VisionDetectionRequest :datatype-) "context_action_framework/VisionDetectionRequest")
(setf (get context_action_framework::VisionDetectionRequest :definition-)
      "int8 camera # from types Camera
bool gap_detection
---
bool success
context_action_framework/VisionDetails vision_details
sensor_msgs/Image image

================================================================================
MSG: context_action_framework/VisionDetails
Header header
time camera_acquisition_stamp
bool gap_detection
context_action_framework/Detection[] detections
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
")

(setf (get context_action_framework::VisionDetectionResponse :md5sum-) "11960e268b9d7417534a4507aec91a66")
(setf (get context_action_framework::VisionDetectionResponse :datatype-) "context_action_framework/VisionDetectionResponse")
(setf (get context_action_framework::VisionDetectionResponse :definition-)
      "int8 camera # from types Camera
bool gap_detection
---
bool success
context_action_framework/VisionDetails vision_details
sensor_msgs/Image image

================================================================================
MSG: context_action_framework/VisionDetails
Header header
time camera_acquisition_stamp
bool gap_detection
context_action_framework/Detection[] detections
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
")



(provide :context_action_framework/VisionDetection "11960e268b9d7417534a4507aec91a66")


