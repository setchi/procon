(defun solve (a b)
  (* 2 (+ b (* a (expt 10 (1+ (floor (log b 10))))))))

(defun main ()
  (format t "~a~%" (solve (read) (read))))
(main)
