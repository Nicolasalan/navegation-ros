;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::IOBoardSetDigOut)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'IOBoardSetDigOut (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::IOBOARDSETDIGOUT")
  (make-package "NEO_SRVS::IOBOARDSETDIGOUT"))
(unless (find-package "NEO_SRVS::IOBOARDSETDIGOUTREQUEST")
  (make-package "NEO_SRVS::IOBOARDSETDIGOUTREQUEST"))
(unless (find-package "NEO_SRVS::IOBOARDSETDIGOUTRESPONSE")
  (make-package "NEO_SRVS::IOBOARDSETDIGOUTRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::IOBoardSetDigOutRequest
  :super ros::object
  :slots (_id _state ))

(defmethod neo_srvs::IOBoardSetDigOutRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state __state)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass neo_srvs::IOBoardSetDigOutResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::IOBoardSetDigOutResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass neo_srvs::IOBoardSetDigOut
  :super ros::object
  :slots ())

(setf (get neo_srvs::IOBoardSetDigOut :md5sum-) "2f1355cc54f74167e7674386afa4efe9")
(setf (get neo_srvs::IOBoardSetDigOut :datatype-) "neo_srvs/IOBoardSetDigOut")
(setf (get neo_srvs::IOBoardSetDigOut :request) neo_srvs::IOBoardSetDigOutRequest)
(setf (get neo_srvs::IOBoardSetDigOut :response) neo_srvs::IOBoardSetDigOutResponse)

(defmethod neo_srvs::IOBoardSetDigOutRequest
  (:response () (instance neo_srvs::IOBoardSetDigOutResponse :init)))

(setf (get neo_srvs::IOBoardSetDigOutRequest :md5sum-) "2f1355cc54f74167e7674386afa4efe9")
(setf (get neo_srvs::IOBoardSetDigOutRequest :datatype-) "neo_srvs/IOBoardSetDigOutRequest")
(setf (get neo_srvs::IOBoardSetDigOutRequest :definition-)
      "int16 id
bool state
---
bool success

")

(setf (get neo_srvs::IOBoardSetDigOutResponse :md5sum-) "2f1355cc54f74167e7674386afa4efe9")
(setf (get neo_srvs::IOBoardSetDigOutResponse :datatype-) "neo_srvs/IOBoardSetDigOutResponse")
(setf (get neo_srvs::IOBoardSetDigOutResponse :definition-)
      "int16 id
bool state
---
bool success

")



(provide :neo_srvs/IOBoardSetDigOut "2f1355cc54f74167e7674386afa4efe9")


