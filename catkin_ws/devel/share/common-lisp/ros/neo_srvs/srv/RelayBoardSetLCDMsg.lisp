; Auto-generated. Do not edit!


(cl:in-package neo_srvs-srv)


;//! \htmlinclude RelayBoardSetLCDMsg-request.msg.html

(cl:defclass <RelayBoardSetLCDMsg-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass RelayBoardSetLCDMsg-request (<RelayBoardSetLCDMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardSetLCDMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardSetLCDMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardSetLCDMsg-request> is deprecated: use neo_srvs-srv:RelayBoardSetLCDMsg-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RelayBoardSetLCDMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:message-val is deprecated.  Use neo_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardSetLCDMsg-request>) ostream)
  "Serializes a message object of type '<RelayBoardSetLCDMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardSetLCDMsg-request>) istream)
  "Deserializes a message object of type '<RelayBoardSetLCDMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardSetLCDMsg-request>)))
  "Returns string type for a service object of type '<RelayBoardSetLCDMsg-request>"
  "neo_srvs/RelayBoardSetLCDMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetLCDMsg-request)))
  "Returns string type for a service object of type 'RelayBoardSetLCDMsg-request"
  "neo_srvs/RelayBoardSetLCDMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardSetLCDMsg-request>)))
  "Returns md5sum for a message object of type '<RelayBoardSetLCDMsg-request>"
  "8b7095eb8dcd517ba7c37a0a06dcc50b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardSetLCDMsg-request)))
  "Returns md5sum for a message object of type 'RelayBoardSetLCDMsg-request"
  "8b7095eb8dcd517ba7c37a0a06dcc50b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardSetLCDMsg-request>)))
  "Returns full string definition for message of type '<RelayBoardSetLCDMsg-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardSetLCDMsg-request)))
  "Returns full string definition for message of type 'RelayBoardSetLCDMsg-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardSetLCDMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardSetLCDMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardSetLCDMsg-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude RelayBoardSetLCDMsg-response.msg.html

(cl:defclass <RelayBoardSetLCDMsg-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelayBoardSetLCDMsg-response (<RelayBoardSetLCDMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayBoardSetLCDMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayBoardSetLCDMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neo_srvs-srv:<RelayBoardSetLCDMsg-response> is deprecated: use neo_srvs-srv:RelayBoardSetLCDMsg-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RelayBoardSetLCDMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neo_srvs-srv:success-val is deprecated.  Use neo_srvs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayBoardSetLCDMsg-response>) ostream)
  "Serializes a message object of type '<RelayBoardSetLCDMsg-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayBoardSetLCDMsg-response>) istream)
  "Deserializes a message object of type '<RelayBoardSetLCDMsg-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayBoardSetLCDMsg-response>)))
  "Returns string type for a service object of type '<RelayBoardSetLCDMsg-response>"
  "neo_srvs/RelayBoardSetLCDMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetLCDMsg-response)))
  "Returns string type for a service object of type 'RelayBoardSetLCDMsg-response"
  "neo_srvs/RelayBoardSetLCDMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayBoardSetLCDMsg-response>)))
  "Returns md5sum for a message object of type '<RelayBoardSetLCDMsg-response>"
  "8b7095eb8dcd517ba7c37a0a06dcc50b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayBoardSetLCDMsg-response)))
  "Returns md5sum for a message object of type 'RelayBoardSetLCDMsg-response"
  "8b7095eb8dcd517ba7c37a0a06dcc50b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayBoardSetLCDMsg-response>)))
  "Returns full string definition for message of type '<RelayBoardSetLCDMsg-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayBoardSetLCDMsg-response)))
  "Returns full string definition for message of type 'RelayBoardSetLCDMsg-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayBoardSetLCDMsg-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayBoardSetLCDMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayBoardSetLCDMsg-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RelayBoardSetLCDMsg)))
  'RelayBoardSetLCDMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RelayBoardSetLCDMsg)))
  'RelayBoardSetLCDMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayBoardSetLCDMsg)))
  "Returns string type for a service object of type '<RelayBoardSetLCDMsg>"
  "neo_srvs/RelayBoardSetLCDMsg")