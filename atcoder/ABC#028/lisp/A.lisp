(defun solve (n)
  (cond ((<= n 59) `Bad)
        ((<= n 89) `Good)
        ((<= n 99) `Great)
        (t `Perfect)))

(format t "~:(~a~)~%" (solve (read)))
