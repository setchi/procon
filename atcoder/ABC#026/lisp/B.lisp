(defun solve (n)
  (* pi (loop for i from 0
              for r in (sort (loop repeat n collect (read)) #'>)
              sum (* (expt r 2) (expt -1 i)))))

(defun main ()
  (format t "~,7f~%" (solve (read))))
(main)
