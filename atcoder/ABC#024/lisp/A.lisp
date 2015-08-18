(defun solve (a b c k s tt)
  (let ((sum (+ s tt)))
    (- (+ (* s a) (* tt b)) (if (<= k sum) (* c sum) 0))))


(defun main ()
  (format t "~a~%" (solve (read) (read) (read) (read) (read) (read))))
(main)
