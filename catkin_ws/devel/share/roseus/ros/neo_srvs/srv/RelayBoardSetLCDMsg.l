;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::RelayBoardSetLCDMsg)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'RelayBoardSetLCDMsg (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::RELAYBOARDSETLCDMSG")
  (make-package "NEO_SRVS::RELAYBOARDSETLCDMSG"))
(unless (find-package "NEO_SRVS::RELAYBOARDSETLCDMSGREQUEST")
  (make-package "NEO_SRVS::RELAYBOARDSETLCDMSGREQUEST"))
(unless (find-package "NEO_SRVS::RELAYBOARDSETLCDMSGRESPONSE")
  (make-package "NEO_SRVS::RELAYBOARDSETLCDMSGRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::RelayBoardSetLCDMsgRequest
  :super ros::object
  :slots (_message ))

(defmethod neo_srvs::RelayBoardSetLCDMsgRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass neo_srvs::RelayBoardSetLCDMsgResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::RelayBoardSetLCDMsgResponse
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

(defclass neo_srvs::RelayBoardSetLCDMsg
  :super ros::object
  :slots ())

(setf (get neo_srvs::RelayBoardSetLCDMsg :md5sum-) "8b7095eb8dcd517ba7c37a0a06dcc50b")
(setf (get neo_srvs::RelayBoardSetLCDMsg :datatype-) "neo_srvs/RelayBoardSetLCDMsg")
(setf (get neo_srvs::RelayBoardSetLCDMsg :request) neo_srvs::RelayBoardSetLCDMsgRequest)
(setf (get neo_srvs::RelayBoardSetLCDMsg :response) neo_srvs::RelayBoardSetLCDMsgResponse)

(defmethod neo_srvs::RelayBoardSetLCDMsgRequest
  (:response () (instance neo_srvs::RelayBoardSetLCDMsgResponse :init)))

(setf (get neo_srvs::RelayBoardSetLCDMsgRequest :md5sum-) "8b7095eb8dcd517ba7c37a0a06dcc50b")
(setf (get neo_srvs::RelayBoardSetLCDMsgRequest :datatype-) "neo_srvs/RelayBoardSetLCDMsgRequest")
(setf (get neo_srvs::RelayBoardSetLCDMsgRequest :definition-)
      "string message
---
bool success

")

(setf (get neo_srvs::RelayBoardSetLCDMsgResponse :md5sum-) "8b7095eb8dcd517ba7c37a0a06dcc50b")
(setf (get neo_srvs::RelayBoardSetLCDMsgResponse :datatype-) "neo_srvs/RelayBoardSetLCDMsgResponse")
(setf (get neo_srvs::RelayBoardSetLCDMsgResponse :definition-)
      "string message
---
bool success

")



(provide :neo_srvs/RelayBoardSetLCDMsg "8b7095eb8dcd517ba7c37a0a06dcc50b")


