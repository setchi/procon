(defun solve (a b c)
  (if (= a b) c (if (= a c) b a)))

(format t "~a~%" (solve (read) (read) (read)))
