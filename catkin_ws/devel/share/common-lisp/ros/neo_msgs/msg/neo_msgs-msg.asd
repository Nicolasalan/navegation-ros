
(cl:in-package :asdf)

(defsystem "neo_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "EmergencyStopState" :depends-on ("_package_EmergencyStopState"))
    (:file "_package_EmergencyStopState" :depends-on ("_package"))
    (:file "IOBoard" :depends-on ("_package_IOBoard"))
    (:file "_package_IOBoard" :depends-on ("_package"))
    (:file "Keypad" :depends-on ("_package_Keypad"))
    (:file "_package_Keypad" :depends-on ("_package"))
    (:file "LCDOutput" :depends-on ("_package_LCDOutput"))
    (:file "_package_LCDOutput" :depends-on ("_package"))
    (:file "RelayBoardV2" :depends-on ("_package_RelayBoardV2"))
    (:file "_package_RelayBoardV2" :depends-on ("_package"))
    (:file "USBoard" :depends-on ("_package_USBoard"))
    (:file "_package_USBoard" :depends-on ("_package"))
    (:file "USBoardV2" :depends-on ("_package_USBoardV2"))
    (:file "_package_USBoardV2" :depends-on ("_package"))
  ))