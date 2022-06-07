;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::LockPlatform)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'LockPlatform (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::LOCKPLATFORM")
  (make-package "NEO_SRVS::LOCKPLATFORM"))
(unless (find-package "NEO_SRVS::LOCKPLATFORMREQUEST")
  (make-package "NEO_SRVS::LOCKPLATFORMREQUEST"))
(unless (find-package "NEO_SRVS::LOCKPLATFORMRESPONSE")
  (make-package "NEO_SRVS::LOCKPLATFORMRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::LockPlatformRequest
  :super ros::object
  :slots ())

(defmethod neo_srvs::LockPlatformRequest
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

(defclass neo_srvs::LockPlatformResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::LockPlatformResponse
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

(defclass neo_srvs::LockPlatform
  :super ros::object
  :slots ())

(setf (get neo_srvs::LockPlatform :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::LockPlatform :datatype-) "neo_srvs/LockPlatform")
(setf (get neo_srvs::LockPlatform :request) neo_srvs::LockPlatformRequest)
(setf (get neo_srvs::LockPlatform :response) neo_srvs::LockPlatformResponse)

(defmethod neo_srvs::LockPlatformRequest
  (:response () (instance neo_srvs::LockPlatformResponse :init)))

(setf (get neo_srvs::LockPlatformRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::LockPlatformRequest :datatype-) "neo_srvs/LockPlatformRequest")
(setf (get neo_srvs::LockPlatformRequest :definition-)
      "---
bool success

")

(setf (get neo_srvs::LockPlatformResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::LockPlatformResponse :datatype-) "neo_srvs/LockPlatformResponse")
(setf (get neo_srvs::LockPlatformResponse :definition-)
      "---
bool success

")



(provide :neo_srvs/LockPlatform "358e233cde0c8a8bcfea4ce193f8fc15")


