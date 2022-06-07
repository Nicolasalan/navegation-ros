; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude IOBoardSetDigOut-request.msg.html

(cl:defclass <IOBoardSetDigOut-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IOBoardSetDigOut-request (<IOBoardSetDigOut-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOBoardSetDigOut-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOBoardSetDigOut-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<IOBoardSetDigOut-request> is deprecated: use neo_srvs-srv:IOBoardSetDigOut-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <IOBoardSetDigOut-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:id-val is deprecated.  Use neo_srvs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <IOBoardSetDigOut-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:state-val is deprecated.  Use neo_srvs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOBoardSetDigOut-request>) ostream)
  "Serializes a message object of type '<IOBoardSetDigOut-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOBoardSetDigOut-request>) istream)
  "Deserializes a message object of type '<IOBoardSetDigOut-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOBoardSetDigOut-request>)))
  "Returns string type for a service object of type '<IOBoardSetDigOut-request>"
  "neo_srvs/IOBoardSetDigOutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOBoardSetDigOut-request)))
  "Returns string type for a service object of type 'IOBoardSetDigOut-request"
  "neo_srvs/IOBoardSetDigOutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOBoardSetDigOut-request>)))
  "Returns md5sum for a message object of type '<IOBoardSetDigOut-request>"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOBoardSetDigOut-request)))
  "Returns md5sum for a message object of type 'IOBoardSetDigOut-request"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOBoardSetDigOut-request>)))
  "Returns full string definition for message of type '<IOBoardSetDigOut-request>"
  (cl:format cl:nil "int16 id~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOBoardSetDigOut-request)))
  "Returns full string definition for message of type 'IOBoardSetDigOut-request"
  (cl:format cl:nil "int16 id~%bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOBoardSetDigOut-request>))
  (cl:+ 0
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOBoardSetDigOut-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IOBoardSetDigOut-request
    (cl:cons ':id (id msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude IOBoardSetDigOut-response.msg.html

(cl:defclass <IOBoardSetDigOut-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass IOBoardSetDigOut-response (<IOBoardSetDigOut-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOBoardSetDigOut-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOBoardSetDigOut-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<IOBoardSetDigOut-response> is deprecated: use neo_srvs-srv:IOBoardSetDigOut-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <IOBoardSetDigOut-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOBoardSetDigOut-response>) ostream)
  "Serializes a message object of type '<IOBoardSetDigOut-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOBoardSetDigOut-response>) istream)
  "Deserializes a message object of type '<IOBoardSetDigOut-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOBoardSetDigOut-response>)))
  "Returns string type for a service object of type '<IOBoardSetDigOut-response>"
  "neo_srvs/IOBoardSetDigOutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOBoardSetDigOut-response)))
  "Returns string type for a service object of type 'IOBoardSetDigOut-response"
  "neo_srvs/IOBoardSetDigOutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOBoardSetDigOut-response>)))
  "Returns md5sum for a message object of type '<IOBoardSetDigOut-response>"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOBoardSetDigOut-response)))
  "Returns md5sum for a message object of type 'IOBoardSetDigOut-response"
  "2f1355cc54f74167e7674386afa4efe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOBoardSetDigOut-response>)))
  "Returns full string definition for message of type '<IOBoardSetDigOut-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOBoardSetDigOut-response)))
  "Returns full string definition for message of type 'IOBoardSetDigOut-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOBoardSetDigOut-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOBoardSetDigOut-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IOBoardSetDigOut-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IOBoardSetDigOut)))
  'IOBoardSetDigOut-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IOBoardSetDigOut)))
  'IOBoardSetDigOut-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOBoardSetDigOut)))
  "Returns string type for a service object of type '<IOBoardSetDigOut>"
  "neo_srvs/IOBoardSetDigOut")