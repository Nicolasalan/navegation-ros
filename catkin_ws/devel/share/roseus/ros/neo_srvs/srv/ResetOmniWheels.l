;; Auto-generated. Do not edit!


(when (boundp 'neo_srvs::ResetOmniWheels)
  (if (not (find-package "NEO_SRVS"))
    (make-package "NEO_SRVS"))
  (shadow 'ResetOmniWheels (find-package "NEO_SRVS")))
(unless (find-package "NEO_SRVS::RESETOMNIWHEELS")
  (make-package "NEO_SRVS::RESETOMNIWHEELS"))
(unless (find-package "NEO_SRVS::RESETOMNIWHEELSREQUEST")
  (make-package "NEO_SRVS::RESETOMNIWHEELSREQUEST"))
(unless (find-package "NEO_SRVS::RESETOMNIWHEELSRESPONSE")
  (make-package "NEO_SRVS::RESETOMNIWHEELSRESPONSE"))

(in-package "ROS")





(defclass neo_srvs::ResetOmniWheelsRequest
  :super ros::object
  :slots (_steer_angles_rad ))

(defmethod neo_srvs::ResetOmniWheelsRequest
  (:init
   (&key
    ((:steer_angles_rad __steer_angles_rad) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _steer_angles_rad __steer_angles_rad)
   self)
  (:steer_angles_rad
   (&optional __steer_angles_rad)
   (if __steer_angles_rad (setq _steer_angles_rad __steer_angles_rad)) _steer_angles_rad)
  (:serialization-length
   ()
   (+
    ;; float32[] _steer_angles_rad
    (* 4    (length _steer_angles_rad)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _steer_angles_rad
     (write-long (length _steer_angles_rad) s)
     (dotimes (i (length _steer_angles_rad))
       (sys::poke (elt _steer_angles_rad i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _steer_angles_rad
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steer_angles_rad (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _steer_angles_rad i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass neo_srvs::ResetOmniWheelsResponse
  :super ros::object
  :slots (_success ))

(defmethod neo_srvs::ResetOmniWheelsResponse
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

(defclass neo_srvs::ResetOmniWheels
  :super ros::object
  :slots ())

(setf (get neo_srvs::ResetOmniWheels :md5sum-) "fc4174458451e931b5704dcb756e00b4")
(setf (get neo_srvs::ResetOmniWheels :datatype-) "neo_srvs/ResetOmniWheels")
(setf (get neo_srvs::ResetOmniWheels :request) neo_srvs::ResetOmniWheelsRequest)
(setf (get neo_srvs::ResetOmniWheels :response) neo_srvs::ResetOmniWheelsResponse)

(defmethod neo_srvs::ResetOmniWheelsRequest
  (:response () (instance neo_srvs::ResetOmniWheelsResponse :init)))

(setf (get neo_srvs::ResetOmniWheelsRequest :md5sum-) "fc4174458451e931b5704dcb756e00b4")
(setf (get neo_srvs::ResetOmniWheelsRequest :datatype-) "neo_srvs/ResetOmniWheelsRequest")
(setf (get neo_srvs::ResetOmniWheelsRequest :definition-)
      "float32[] steer_angles_rad
---
bool success

")

(setf (get neo_srvs::ResetOmniWheelsResponse :md5sum-) "fc4174458451e931b5704dcb756e00b4")
(setf (get neo_srvs::ResetOmniWheelsResponse :datatype-) "neo_srvs/ResetOmniWheelsResponse")
(setf (get neo_srvs::ResetOmniWheelsResponse :definition-)
      "float32[] steer_angles_rad
---
bool success

")



(provide :neo_srvs/ResetOmniWheels "fc4174458451e931b5704dcb756e00b4")


