;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::UnlockPlatform)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'UnlockPlatform (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::UNLOCKPLATFORM")
  (make-package "NEO_SRVS::UNLOCKPLATFORM"))
(unless (find-package "NEO_SRVS::UNLOCKPLATFORMREQUEST")
  (make-package "NEO_SRVS::UNLOCKPLATFORMREQUEST"))
(unless (find-package "NEO_SRVS::UNLOCKPLATFORMRESPONSE")
  (make-package "NEO_SRVS::UNLOCKPLATFORMRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::UnlockPlatformRequest
  :super ros::object
  :slots ())

(defmethod neo_srvs::UnlockPlatformRequest
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

(defclass neo_srvs::UnlockPlatformResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::UnlockPlatformResponse
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

(defclass neo_srvs::UnlockPlatform
  :super ros::object
  :slots ())

(setf (get neo_srvs::UnlockPlatform :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::UnlockPlatform :datatype-) "neo_srvs/UnlockPlatform")
(setf (get neo_srvs::UnlockPlatform :request) neo_srvs::UnlockPlatformRequest)
(setf (get neo_srvs::UnlockPlatform :response) neo_srvs::UnlockPlatformResponse)

(defmethod neo_srvs::UnlockPlatformRequest
  (:response () (instance neo_srvs::UnlockPlatformResponse :init)))

(setf (get neo_srvs::UnlockPlatformRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::UnlockPlatformRequest :datatype-) "neo_srvs/UnlockPlatformRequest")
(setf (get neo_srvs::UnlockPlatformRequest :definition-)
      "---
bool success

")

(setf (get neo_srvs::UnlockPlatformResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get neo_srvs::UnlockPlatformResponse :datatype-) "neo_srvs/UnlockPlatformResponse")
(setf (get neo_srvs::UnlockPlatformResponse :definition-)
      "---
bool success

")



(provide :neo_srvs/UnlockPlatform "358e233cde0c8a8bcfea4ce193f8fc15")


