(defun solve (n)
  (let ((m (if (oddp (floor (log n 2))) 1 0)))
    (do ((i 0 (1+ i))
         (x 1 (+ (* 2 x) (if (= (mod i 2) m) 1 0))))
        ((< n x) (if (evenp i) `Takahashi `Aoki)))))

(defun main ()
  (format t "~:(~a~)~%" (solve (read))))
(main)
