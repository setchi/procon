(defun solve (n tt)
	(let ((a (make-array n :initial-contents (loop repeat n collect (read)))))
		(+ tt (loop for i from 1 to (- n 1)
					sum (min tt (- (aref a i) (aref a (- i 1))))))))

(defun main ()
	(format t "~a~%" (solve (read) (read))))
(main)
