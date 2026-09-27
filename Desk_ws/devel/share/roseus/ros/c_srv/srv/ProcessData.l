;; Auto-generated. Do not edit!


(when (boundp 'c_srv::ProcessData)
  (if (not (find-package "C_SRV"))
    (make-package "C_SRV"))
  (shadow 'ProcessData (find-package "C_SRV")))
(unless (find-package "C_SRV::PROCESSDATA")
  (make-package "C_SRV::PROCESSDATA"))
(unless (find-package "C_SRV::PROCESSDATAREQUEST")
  (make-package "C_SRV::PROCESSDATAREQUEST"))
(unless (find-package "C_SRV::PROCESSDATARESPONSE")
  (make-package "C_SRV::PROCESSDATARESPONSE"))

(in-package "ROS")





(defclass c_srv::ProcessDataRequest
  :super ros::object
  :slots (_readings ))

(defmethod c_srv::ProcessDataRequest
  (:init
   (&key
    ((:readings __readings) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _readings __readings)
   self)
  (:readings
   (&optional __readings)
   (if __readings (setq _readings __readings)) _readings)
  (:serialization-length
   ()
   (+
    ;; float32[] _readings
    (* 4    (length _readings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _readings
     (write-long (length _readings) s)
     (dotimes (i (length _readings))
       (sys::poke (elt _readings i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _readings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _readings (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _readings i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass c_srv::ProcessDataResponse
  :super ros::object
  :slots (_avr _max _min ))

(defmethod c_srv::ProcessDataResponse
  (:init
   (&key
    ((:avr __avr) 0.0)
    ((:max __max) 0.0)
    ((:min __min) 0.0)
    )
   (send-super :init)
   (setq _avr (float __avr))
   (setq _max (float __max))
   (setq _min (float __min))
   self)
  (:avr
   (&optional __avr)
   (if __avr (setq _avr __avr)) _avr)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:serialization-length
   ()
   (+
    ;; float32 _avr
    4
    ;; float32 _max
    4
    ;; float32 _min
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _avr
       (sys::poke _avr (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _avr
     (setq _avr (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass c_srv::ProcessData
  :super ros::object
  :slots ())

(setf (get c_srv::ProcessData :md5sum-) "16f2efda5f60ebda61797ff9a741ba29")
(setf (get c_srv::ProcessData :datatype-) "c_srv/ProcessData")
(setf (get c_srv::ProcessData :request) c_srv::ProcessDataRequest)
(setf (get c_srv::ProcessData :response) c_srv::ProcessDataResponse)

(defmethod c_srv::ProcessDataRequest
  (:response () (instance c_srv::ProcessDataResponse :init)))

(setf (get c_srv::ProcessDataRequest :md5sum-) "16f2efda5f60ebda61797ff9a741ba29")
(setf (get c_srv::ProcessDataRequest :datatype-) "c_srv/ProcessDataRequest")
(setf (get c_srv::ProcessDataRequest :definition-)
      "float32[] readings
---
float32 avr
float32 max
float32 min
")

(setf (get c_srv::ProcessDataResponse :md5sum-) "16f2efda5f60ebda61797ff9a741ba29")
(setf (get c_srv::ProcessDataResponse :datatype-) "c_srv/ProcessDataResponse")
(setf (get c_srv::ProcessDataResponse :definition-)
      "float32[] readings
---
float32 avr
float32 max
float32 min
")



(provide :c_srv/ProcessData "16f2efda5f60ebda61797ff9a741ba29")


