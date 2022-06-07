;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::RelayBoardSetEMStop)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'RelayBoardSetEMStop (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::RELAYBOARDSETEMSTOP")
  (make-package "NEO_SRVS::RELAYBOARDSETEMSTOP"))
(unless (find-package "NEO_SRVS::RELAYBOARDSETEMSTOPREQUEST")
  (make-package "NEO_SRVS::RELAYBOARDSETEMSTOPREQUEST"))
(unless (find-package "NEO_SRVS::RELAYBOARDSETEMSTOPRESPONSE")
  (make-package "NEO_SRVS::RELAYBOARDSETEMSTOPRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::RelayBoardSetEMStopRequest
  :super ros::object
  :slots ())

(defmethod neo_srvs::RelayBoardSetEMStopRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass neo_srvs::RelayBoardSetEMStopResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::RelayBoardSetEMStopResponse
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

(defclass neo_srvs::RelayBoardSetEMStop
  :super ros::object
  :slots ())

(setf (get neo_srvs::RelayBoardSetEMStop :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::RelayBoardSetEMStop :datatype-) "neo_srvs/RelayBoardSetEMStop")
(setf (get neo_srvs::RelayBoardSetEMStop :request) neo_srvs::RelayBoardSetEMStopRequest)
(setf (get neo_srvs::RelayBoardSetEMStop :response) neo_srvs::RelayBoardSetEMStopResponse)

(defmethod neo_srvs::RelayBoardSetEMStopRequest
  (:response () (instance neo_srvs::RelayBoardSetEMStopResponse :init)))

(setf (get neo_srvs::RelayBoardSetEMStopRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::RelayBoardSetEMStopRequest :datatype-) "neo_srvs/RelayBoardSetEMStopRequest")
(setf (get neo_srvs::RelayBoardSetEMStopRequest :definition-)
      "---
bool success

")

(setf (get neo_srvs::RelayBoardSetEMStopResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::RelayBoardSetEMStopResponse :datatype-) "neo_srvs/RelayBoardSetEMStopResponse")
(setf (get neo_srvs::RelayBoardSetEMStopResponse :definition-)
      "---
bool success

")



(provide :neo_srvs/RelayBoardSetEMStop "358e233cde0c8a8bcfea4ce193f8fc15")


