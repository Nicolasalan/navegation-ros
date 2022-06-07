;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::ActivateMotors)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'ActivateMotors (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::ACTIVATEMOTORS")
  (make-package "NEO_SRVS::ACTIVATEMOTORS"))
(unless (find-package "NEO_SRVS::ACTIVATEMOTORSREQUEST")
  (make-package "NEO_SRVS::ACTIVATEMOTORSREQUEST"))
(unless (find-package "NEO_SRVS::ACTIVATEMOTORSRESPONSE")
  (make-package "NEO_SRVS::ACTIVATEMOTORSRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::ActivateMotorsRequest
  :super ros::object
  :slots ())

(defmethod neo_srvs::ActivateMotorsRequest
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

(defclass neo_srvs::ActivateMotorsResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::ActivateMotorsResponse
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

(defclass neo_srvs::ActivateMotors
  :super ros::object
  :slots ())

(setf (get neo_srvs::ActivateMotors :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::ActivateMotors :datatype-) "neo_srvs/ActivateMotors")
(setf (get neo_srvs::ActivateMotors :request) neo_srvs::ActivateMotorsRequest)
(setf (get neo_srvs::ActivateMotors :response) neo_srvs::ActivateMotorsResponse)

(defmethod neo_srvs::ActivateMotorsRequest
  (:response () (instance neo_srvs::ActivateMotorsResponse :init)))

(setf (get neo_srvs::ActivateMotorsRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::ActivateMotorsRequest :datatype-) "neo_srvs/ActivateMotorsRequest")
(setf (get neo_srvs::ActivateMotorsRequest :definition-)
      "---
bool success
")

(setf (get neo_srvs::ActivateMotorsResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::ActivateMotorsResponse :datatype-) "neo_srvs/ActivateMotorsResponse")
(setf (get neo_srvs::ActivateMotorsResponse :definition-)
      "---
bool success
")



(provide :neo_srvs/ActivateMotors "358e233cde0c8a8bcfea4ce193f8fc15")


