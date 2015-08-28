(defun solve (d s)
  (if (not d) s
      (solve (cddr d) (+ s (car d)))))

(defun main ()
  (let* ((n (read))
         (d (sort (loop repeat n collect (read)) #'>)))
    (format t "~a~%" (solve d 0))))
(main)
