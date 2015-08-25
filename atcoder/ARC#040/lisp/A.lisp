(defun solve (s)
  (let ((r (count #\R s))
        (b (count #\B s)))
    (cond ((> r b) `TAKAHASHI)
          ((< r b) `AOKI)
          (t `DRAW))))

(defun main ()
  (let* ((n (read))
         (s (loop repeat n append (coerce (read-line) `list))))
    (format t "~a~%" (solve s))))
(main)
