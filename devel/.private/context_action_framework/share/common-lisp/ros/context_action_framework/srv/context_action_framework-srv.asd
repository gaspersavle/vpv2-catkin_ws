
(cl:in-package :asdf)

(defsystem "context_action_framework-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :context_action_framework-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "NextAction" :depends-on ("_package_NextAction"))
    (:file "_package_NextAction" :depends-on ("_package"))
    (:file "VisionDetection" :depends-on ("_package_VisionDetection"))
    (:file "_package_VisionDetection" :depends-on ("_package"))
  ))