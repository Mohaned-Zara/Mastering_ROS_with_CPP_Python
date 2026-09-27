
(cl:in-package :asdf)

(defsystem "c_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "ProcessData" :depends-on ("_package_ProcessData"))
    (:file "_package_ProcessData" :depends-on ("_package"))
  ))