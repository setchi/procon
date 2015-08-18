(defun solve (n tt)
  (let ((a (make-array n :initial-contents (loop repeat n collect (read)))))
    (+ tt (loop for i from 1 to (1- n)
                sum (min tt (- (aref a i) (aref a (1- i))))))))

(defun main ()
  (format t "~a~%" (solve (read) (read))))
(main)
