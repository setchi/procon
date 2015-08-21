(defun solve (n s tt)
  (let ((w 0))
    (loop repeat n
          do (incf w (read))
          count (<= s w tt))))

(defun main ()
  (format t "~a~%" (solve (read) (read) (read))))
(main)
