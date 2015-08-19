(defun solve (a b)
  (* 2 (parse-integer (format nil "~a~a" a b))))

(defun main ()
  (format t "~a~%" (solve (read) (read))))
(main)
