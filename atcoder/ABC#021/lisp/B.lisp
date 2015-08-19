(defun solve (a)
  (if (= (length a) (length (remove-duplicates a)))
      `YES
      `NO))

(defun main ()
  (read)
  (let ((lst (append
               (loop repeat 2 collect (read))
               (loop repeat (read) collect (read)))))
    (format t "~a~%" (solve lst))))
(main)
