(defun solve (n)
  (* pi (loop for i from 0
              for r2 in (sort (loop repeat n collect (expt (read) 2)) #'>)
              sum (if (evenp i) r2 (- r2)))))

(defun main ()
  (format t "~,7f~%" (solve (read))))
(main)
