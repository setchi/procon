(defun solve (n)
	(+ (mod n 10) (floor (/ n 10))))

(defun main ()
	(format t "~a~%" (solve (read))))
(main)
