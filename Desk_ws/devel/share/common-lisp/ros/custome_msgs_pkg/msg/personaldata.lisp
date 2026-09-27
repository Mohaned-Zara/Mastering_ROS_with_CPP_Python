; Auto-generated. Do not edit!


(cl:in-package custome_msgs_pkg-msg)


;//! \htmlinclude personaldata.msg.html

(cl:defclass <personaldata> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass personaldata (<personaldata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <personaldata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'personaldata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name custome_msgs_pkg-msg:<personaldata> is deprecated: use custome_msgs_pkg-msg:personaldata instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <personaldata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custome_msgs_pkg-msg:name-val is deprecated.  Use custome_msgs_pkg-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <personaldata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custome_msgs_pkg-msg:age-val is deprecated.  Use custome_msgs_pkg-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <personaldata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custome_msgs_pkg-msg:score-val is deprecated.  Use custome_msgs_pkg-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <personaldata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader custome_msgs_pkg-msg:active-val is deprecated.  Use custome_msgs_pkg-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <personaldata>) ostream)
  "Serializes a message object of type '<personaldata>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <personaldata>) istream)
  "Deserializes a message object of type '<personaldata>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<personaldata>)))
  "Returns string type for a message object of type '<personaldata>"
  "custome_msgs_pkg/personaldata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'personaldata)))
  "Returns string type for a message object of type 'personaldata"
  "custome_msgs_pkg/personaldata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<personaldata>)))
  "Returns md5sum for a message object of type '<personaldata>"
  "061349f55a78627d0345fee97c4f7854")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'personaldata)))
  "Returns md5sum for a message object of type 'personaldata"
  "061349f55a78627d0345fee97c4f7854")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<personaldata>)))
  "Returns full string definition for message of type '<personaldata>"
  (cl:format cl:nil "string name~%int32 age~%float32 score~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'personaldata)))
  "Returns full string definition for message of type 'personaldata"
  (cl:format cl:nil "string name~%int32 age~%float32 score~%bool active~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <personaldata>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <personaldata>))
  "Converts a ROS message object to a list"
  (cl:list 'personaldata
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':score (score msg))
    (cl:cons ':active (active msg))
))
