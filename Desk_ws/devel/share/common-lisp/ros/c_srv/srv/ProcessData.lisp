; Auto-generated. Do not edit!


(cl:in-package c_srv-srv)


;//! \htmlinclude ProcessData-request.msg.html

(cl:defclass <ProcessData-request> (roslisp-msg-protocol:ros-message)
  ((readings
    :reader readings
    :initarg :readings
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ProcessData-request (<ProcessData-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessData-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessData-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name c_srv-srv:<ProcessData-request> is deprecated: use c_srv-srv:ProcessData-request instead.")))

(cl:ensure-generic-function 'readings-val :lambda-list '(m))
(cl:defmethod readings-val ((m <ProcessData-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader c_srv-srv:readings-val is deprecated.  Use c_srv-srv:readings instead.")
  (readings m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessData-request>) ostream)
  "Serializes a message object of type '<ProcessData-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'readings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'readings))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessData-request>) istream)
  "Deserializes a message object of type '<ProcessData-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'readings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'readings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessData-request>)))
  "Returns string type for a service object of type '<ProcessData-request>"
  "c_srv/ProcessDataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessData-request)))
  "Returns string type for a service object of type 'ProcessData-request"
  "c_srv/ProcessDataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessData-request>)))
  "Returns md5sum for a message object of type '<ProcessData-request>"
  "16f2efda5f60ebda61797ff9a741ba29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessData-request)))
  "Returns md5sum for a message object of type 'ProcessData-request"
  "16f2efda5f60ebda61797ff9a741ba29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessData-request>)))
  "Returns full string definition for message of type '<ProcessData-request>"
  (cl:format cl:nil "float32[] readings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessData-request)))
  "Returns full string definition for message of type 'ProcessData-request"
  (cl:format cl:nil "float32[] readings~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessData-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'readings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessData-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessData-request
    (cl:cons ':readings (readings msg))
))
;//! \htmlinclude ProcessData-response.msg.html

(cl:defclass <ProcessData-response> (roslisp-msg-protocol:ros-message)
  ((avr
    :reader avr
    :initarg :avr
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0)
   (min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0))
)

(cl:defclass ProcessData-response (<ProcessData-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessData-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessData-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name c_srv-srv:<ProcessData-response> is deprecated: use c_srv-srv:ProcessData-response instead.")))

(cl:ensure-generic-function 'avr-val :lambda-list '(m))
(cl:defmethod avr-val ((m <ProcessData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader c_srv-srv:avr-val is deprecated.  Use c_srv-srv:avr instead.")
  (avr m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <ProcessData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader c_srv-srv:max-val is deprecated.  Use c_srv-srv:max instead.")
  (max m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <ProcessData-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader c_srv-srv:min-val is deprecated.  Use c_srv-srv:min instead.")
  (min m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessData-response>) ostream)
  "Serializes a message object of type '<ProcessData-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'avr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessData-response>) istream)
  "Deserializes a message object of type '<ProcessData-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'avr) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessData-response>)))
  "Returns string type for a service object of type '<ProcessData-response>"
  "c_srv/ProcessDataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessData-response)))
  "Returns string type for a service object of type 'ProcessData-response"
  "c_srv/ProcessDataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessData-response>)))
  "Returns md5sum for a message object of type '<ProcessData-response>"
  "16f2efda5f60ebda61797ff9a741ba29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessData-response)))
  "Returns md5sum for a message object of type 'ProcessData-response"
  "16f2efda5f60ebda61797ff9a741ba29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessData-response>)))
  "Returns full string definition for message of type '<ProcessData-response>"
  (cl:format cl:nil "float32 avr~%float32 max~%float32 min~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessData-response)))
  "Returns full string definition for message of type 'ProcessData-response"
  (cl:format cl:nil "float32 avr~%float32 max~%float32 min~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessData-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessData-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessData-response
    (cl:cons ':avr (avr msg))
    (cl:cons ':max (max msg))
    (cl:cons ':min (min msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ProcessData)))
  'ProcessData-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ProcessData)))
  'ProcessData-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessData)))
  "Returns string type for a service object of type '<ProcessData>"
  "c_srv/ProcessData")