;; Auto-generated. Do not edit!


(when (boundp 'chat_messages::BinaryFile)
  (if (not (find-package "CHAT_MESSAGES"))
    (make-package "CHAT_MESSAGES"))
  (shadow 'BinaryFile (find-package "CHAT_MESSAGES")))
(unless (find-package "CHAT_MESSAGES::BINARYFILE")
  (make-package "CHAT_MESSAGES::BINARYFILE"))

(in-package "ROS")
;;//! \htmlinclude BinaryFile.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass chat_messages::BinaryFile
  :super ros::object
  :slots (_header _sender _text _data_name _data ))

(defmethod chat_messages::BinaryFile
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sender __sender) "")
    ((:text __text) "")
    ((:data_name __data_name) "")
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sender (string __sender))
   (setq _text (string __text))
   (setq _data_name (string __data_name))
   (setq _data __data)
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
  (:data_name
   (&optional __data_name)
   (if __data_name (setq _data_name __data_name)) _data_name)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _sender
    4 (length _sender)
    ;; string _text
    4 (length _text)
    ;; string _data_name
    4 (length _data_name)
    ;; byte[] _data
    (* 1    (length _data)) 4
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
     ;; string _data_name
       (write-long (length _data_name) s) (princ _data_name s)
     ;; byte[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
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
   ;; string _data_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; byte[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;;
   self)
  )

(setf (get chat_messages::BinaryFile :md5sum-) "4f4f2455f5d960a16307ee71094083ee")
(setf (get chat_messages::BinaryFile :datatype-) "chat_messages/BinaryFile")
(setf (get chat_messages::BinaryFile :definition-)
      "Header header
string sender
string text
# File
string  data_name     # name of the data
byte[]  data          # array of data
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



(provide :chat_messages/BinaryFile "4f4f2455f5d960a16307ee71094083ee")


