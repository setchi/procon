(defun solve (n s tt)
  (let ((w 0))
    (loop repeat n
          do (setf w (+ w (read)))
          count (and (<= s w) (<= w tt)))))

(defun main ()
  (format t "~a~%" (solve (read) (read) (read))))
(main)
