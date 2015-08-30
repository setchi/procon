(defun solve (s)
  (+ (fifth s)
     (max (+ (first s) (fourth s))
          (+ (second s) (third s)))))

(format t "~a~%" (solve (loop repeat 5 collect (read))))
