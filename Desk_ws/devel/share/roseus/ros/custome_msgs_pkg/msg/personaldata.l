;; Auto-generated. Do not edit!


(when (boundp 'custome_msgs_pkg::personaldata)
  (if (not (find-package "CUSTOME_MSGS_PKG"))
    (make-package "CUSTOME_MSGS_PKG"))
  (shadow 'personaldata (find-package "CUSTOME_MSGS_PKG")))
(unless (find-package "CUSTOME_MSGS_PKG::PERSONALDATA")
  (make-package "CUSTOME_MSGS_PKG::PERSONALDATA"))

(in-package "ROS")
;;//! \htmlinclude personaldata.msg.html


(defclass custome_msgs_pkg::personaldata
  :super ros::object
  :slots (_name _age _score _active ))

(defmethod custome_msgs_pkg::personaldata
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:score __score) 0.0)
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _score (float __score))
   (setq _active __active)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _age
    4
    ;; float32 _score
    4
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _age
       (write-long _age s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get custome_msgs_pkg::personaldata :md5sum-) "061349f55a78627d0345fee97c4f7854")
(setf (get custome_msgs_pkg::personaldata :datatype-) "custome_msgs_pkg/personaldata")
(setf (get custome_msgs_pkg::personaldata :definition-)
      "string name
int32 age
float32 score
bool active
")



(provide :custome_msgs_pkg/personaldata "061349f55a78627d0345fee97c4f7854")


