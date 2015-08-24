(defun solve (x y k)
  (if (<= k y)
      (+ x k)
      (+ y (- x (- k y)))))

(defun main ()
  (format t "~a~%" (solve (read) (read) (read))))
(main)
