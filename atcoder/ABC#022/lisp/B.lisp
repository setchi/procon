(defun solve (n)
  (let ((a (loop repeat n collect (read))))
    (- (length a) (length (remove-duplicates a)))))

(defun main ()
  (format t "~a~%" (solve (read))))
(main)
