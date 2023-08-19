;; Auto-generated. Do not edit!


(when (boundp 'context_action_framework::Detection)
  (if (not (find-package "CONTEXT_ACTION_FRAMEWORK"))
    (make-package "CONTEXT_ACTION_FRAMEWORK"))
  (shadow 'Detection (find-package "CONTEXT_ACTION_FRAMEWORK")))
(unless (find-package "CONTEXT_ACTION_FRAMEWORK::DETECTION")
  (make-package "CONTEXT_ACTION_FRAMEWORK::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass context_action_framework::Detection
  :super ros::object
  :slots (_id _tracking_id _label _score _tf_px _box_px _obb_px _center_px _polygon_px _tf _box _obb _center _polygon _obb_3d ))

(defmethod context_action_framework::Detection
  (:init
   (&key
    ((:id __id) 0)
    ((:tracking_id __tracking_id) 0)
    ((:label __label) 0)
    ((:score __score) 0.0)
    ((:tf_px __tf_px) (instance geometry_msgs::Transform :init))
    ((:box_px __box_px) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obb_px __obb_px) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:center_px __center_px) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:polygon_px __polygon_px) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tf __tf) (instance geometry_msgs::Transform :init))
    ((:box __box) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obb __obb) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:center __center) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:polygon __polygon) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obb_3d __obb_3d) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _tracking_id (round __tracking_id))
   (setq _label (round __label))
   (setq _score (float __score))
   (setq _tf_px __tf_px)
   (setq _box_px __box_px)
   (setq _obb_px __obb_px)
   (setq _center_px __center_px)
   (setq _polygon_px __polygon_px)
   (setq _tf __tf)
   (setq _box __box)
   (setq _obb __obb)
   (setq _center __center)
   (setq _polygon __polygon)
   (setq _obb_3d __obb_3d)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:tracking_id
   (&optional __tracking_id)
   (if __tracking_id (setq _tracking_id __tracking_id)) _tracking_id)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:tf_px
   (&rest __tf_px)
   (if (keywordp (car __tf_px))
       (send* _tf_px __tf_px)
     (progn
       (if __tf_px (setq _tf_px (car __tf_px)))
       _tf_px)))
  (:box_px
   (&optional __box_px)
   (if __box_px (setq _box_px __box_px)) _box_px)
  (:obb_px
   (&optional __obb_px)
   (if __obb_px (setq _obb_px __obb_px)) _obb_px)
  (:center_px
   (&optional __center_px)
   (if __center_px (setq _center_px __center_px)) _center_px)
  (:polygon_px
   (&optional __polygon_px)
   (if __polygon_px (setq _polygon_px __polygon_px)) _polygon_px)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:box
   (&optional __box)
   (if __box (setq _box __box)) _box)
  (:obb
   (&optional __obb)
   (if __obb (setq _obb __obb)) _obb)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:polygon
   (&optional __polygon)
   (if __polygon (setq _polygon __polygon)) _polygon)
  (:obb_3d
   (&optional __obb_3d)
   (if __obb_3d (setq _obb_3d __obb_3d)) _obb_3d)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ;; int64 _tracking_id
    8
    ;; int8 _label
    1
    ;; float32 _score
    4
    ;; geometry_msgs/Transform _tf_px
    (send _tf_px :serialization-length)
    ;; float32[] _box_px
    (* 4    (length _box_px)) 4
    ;; float32[] _obb_px
    (* 4    (length _obb_px)) 4
    ;; float32[] _center_px
    (* 4    (length _center_px)) 4
    ;; float32[] _polygon_px
    (* 4    (length _polygon_px)) 4
    ;; geometry_msgs/Transform _tf
    (send _tf :serialization-length)
    ;; float32[] _box
    (* 4    (length _box)) 4
    ;; float32[] _obb
    (* 4    (length _obb)) 4
    ;; float32[] _center
    (* 4    (length _center)) 4
    ;; float32[] _polygon
    (* 4    (length _polygon)) 4
    ;; float32[] _obb_3d
    (* 4    (length _obb_3d)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int64 _tracking_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tracking_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tracking_id) (= (length (_tracking_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tracking_id . bv) 0) 0) s)
              (write-long (ash (elt (_tracking_id . bv) 1) -1) s))
             ((and (class _tracking_id) (= (length (_tracking_id . bv)) 1)) ;; big1
              (write-long (elt (_tracking_id . bv) 0) s)
              (write-long (if (>= _tracking_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tracking_id s)(write-long (if (>= _tracking_id 0) 0 #xffffffff) s)))
     ;; int8 _label
       (write-byte _label s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Transform _tf_px
       (send _tf_px :serialize s)
     ;; float32[] _box_px
     (write-long (length _box_px) s)
     (dotimes (i (length _box_px))
       (sys::poke (elt _box_px i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _obb_px
     (write-long (length _obb_px) s)
     (dotimes (i (length _obb_px))
       (sys::poke (elt _obb_px i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _center_px
     (write-long (length _center_px) s)
     (dotimes (i (length _center_px))
       (sys::poke (elt _center_px i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _polygon_px
     (write-long (length _polygon_px) s)
     (dotimes (i (length _polygon_px))
       (sys::poke (elt _polygon_px i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Transform _tf
       (send _tf :serialize s)
     ;; float32[] _box
     (write-long (length _box) s)
     (dotimes (i (length _box))
       (sys::poke (elt _box i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _obb
     (write-long (length _obb) s)
     (dotimes (i (length _obb))
       (sys::poke (elt _obb i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _center
     (write-long (length _center) s)
     (dotimes (i (length _center))
       (sys::poke (elt _center i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _polygon
     (write-long (length _polygon) s)
     (dotimes (i (length _polygon))
       (sys::poke (elt _polygon i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _tracking_id
#+(or :alpha :irix6 :x86_64)
      (setf _tracking_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tracking_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int8 _label
     (setq _label (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _label 127) (setq _label (- _label 256)))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Transform _tf_px
     (send _tf_px :deserialize buf ptr-) (incf ptr- (send _tf_px :serialization-length))
   ;; float32[] _box_px
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box_px (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _box_px i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _obb_px
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obb_px (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obb_px i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _center_px
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center_px (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _center_px i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _polygon_px
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_px (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polygon_px i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Transform _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;; float32[] _box
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _box (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _box i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _obb
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obb (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obb i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _center i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polygon i) (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get context_action_framework::Detection :md5sum-) "c6460d311263f3f77c554ecaf759ce2c")
(setf (get context_action_framework::Detection :datatype-) "context_action_framework/Detection")
(setf (get context_action_framework::Detection :definition-)
      "int64 id
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



(provide :context_action_framework/Detection "c6460d311263f3f77c554ecaf759ce2c")


