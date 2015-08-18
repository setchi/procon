(defun clamp (val min max)
  (if (< val min) min (if (> val max) max val)))

(defun solve (n a b)
  (let ((s (loop repeat n for s = (read) for d = (clamp (read) a b)
                 sum (if (eq `East s) (- d) d))))
    (format nil (cond
                  ((< s 0) "East ~a")
                  ((> s 0) "West ~a")
                  (t "~a"))
            (abs s))))

(defun main ()
  (format t "~a~%" (solve (read) (read) (read))))
(main)
