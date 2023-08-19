
(cl:in-package :asdf)

(defsystem "ros_vision_pipeline-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ColourDepth" :depends-on ("_package_ColourDepth"))
    (:file "_package_ColourDepth" :depends-on ("_package"))
  ))