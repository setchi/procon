(defun solve (s n)
  (let ((s (coerce s `list)) (n (1- n)))
    `(,(nth (floor n 5) s) ,(nth (mod n 5) s))))

(defun main ()
  (format t "~{~a~}~%" (solve (read-line) (read))))
(main)
