
(cl:in-package :asdf)

(defsystem "custome_msgs_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "personaldata" :depends-on ("_package_personaldata"))
    (:file "_package_personaldata" :depends-on ("_package"))
  ))