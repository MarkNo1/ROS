;; Auto-generated. Do not edit!


(when (boundp 'chat_messages::Text_message)
  (if (not (find-package "CHAT_MESSAGES"))
    (make-package "CHAT_MESSAGES"))
  (shadow 'Text_message (find-package "CHAT_MESSAGES")))
(unless (find-package "CHAT_MESSAGES::TEXT_MESSAGE")
  (make-package "CHAT_MESSAGES::TEXT_MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Text_message.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass chat_messages::Text_message
  :super ros::object
  :slots (_header _sender _text ))

(defmethod chat_messages::Text_message
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender __sender) "")
    ((:text __text) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender (string __sender))
   (setq _text (string __text))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _sender
    4 (length _sender)
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get chat_messages::Text_message :md5sum-) "7ea06a482c2a35eda1e76e5a2ef3e7b7")
(setf (get chat_messages::Text_message :datatype-) "chat_messages/Text_message")
(setf (get chat_messages::Text_message :definition-)
      "Header header
string sender
string text
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :chat_messages/Text_message "7ea06a482c2a35eda1e76e5a2ef3e7b7")


