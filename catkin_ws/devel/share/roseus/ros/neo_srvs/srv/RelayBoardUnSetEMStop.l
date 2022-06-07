;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::RelayBoardUnSetEMStop)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'RelayBoardUnSetEMStop (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::RELAYBOARDUNSETEMSTOP")
  (make-package "NEO_SRVS::RELAYBOARDUNSETEMSTOP"))
(unless (find-package "NEO_SRVS::RELAYBOARDUNSETEMSTOPREQUEST")
  (make-package "NEO_SRVS::RELAYBOARDUNSETEMSTOPREQUEST"))
(unless (find-package "NEO_SRVS::RELAYBOARDUNSETEMSTOPRESPONSE")
  (make-package "NEO_SRVS::RELAYBOARDUNSETEMSTOPRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::RelayBoardUnSetEMStopRequest
  :super ros::object
  :slots ())

(defmethod neo_srvs::RelayBoardUnSetEMStopRequest
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

(defclass neo_srvs::RelayBoardUnSetEMStopResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::RelayBoardUnSetEMStopResponse
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

(defclass neo_srvs::RelayBoardUnSetEMStop
  :super ros::object
  :slots ())

(setf (get neo_srvs::RelayBoardUnSetEMStop :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::RelayBoardUnSetEMStop :datatype-) "neo_srvs/RelayBoardUnSetEMStop")
(setf (get neo_srvs::RelayBoardUnSetEMStop :request) neo_srvs::RelayBoardUnSetEMStopRequest)
(setf (get neo_srvs::RelayBoardUnSetEMStop :response) neo_srvs::RelayBoardUnSetEMStopResponse)

(defmethod neo_srvs::RelayBoardUnSetEMStopRequest
  (:response () (instance neo_srvs::RelayBoardUnSetEMStopResponse :init)))

(setf (get neo_srvs::RelayBoardUnSetEMStopRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::RelayBoardUnSetEMStopRequest :datatype-) "neo_srvs/RelayBoardUnSetEMStopRequest")
(setf (get neo_srvs::RelayBoardUnSetEMStopRequest :definition-)
      "---
bool success
")

(setf (get neo_srvs::RelayBoardUnSetEMStopResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::RelayBoardUnSetEMStopResponse :datatype-) "neo_srvs/RelayBoardUnSetEMStopResponse")
(setf (get neo_srvs::RelayBoardUnSetEMStopResponse :definition-)
      "---
bool success
")



(provide :neo_srvs/RelayBoardUnSetEMStop "358e233cde0c8a8bcfea4ce193f8fc15")


