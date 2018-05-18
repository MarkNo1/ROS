
(cl:in-package :asdf)

(defsystem "chat_messages-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BinaryFile" :depends-on ("_package_BinaryFile"))
    (:file "_package_BinaryFile" :depends-on ("_package"))
    (:file "Text_message" :depends-on ("_package_Text_message"))
    (:file "_package_Text_message" :depends-on ("_package"))
  ))