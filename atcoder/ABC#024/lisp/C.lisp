(defun solve (d k lr st)
  (dotimes (i d)
    (dotimes (j k)
      (let ((l (aref lr i 0))
            (r (aref lr i 1))
            (s (aref st j 0))
            (e (aref st j 1)))
        (if (and (/= s e)
                 (<= l s)
                 (<= s r))
            (let ((amount (if (> e s) 
                              (min (- r s) (- e s))
                              (- (min (- s l) (- s e))))))
              (setf (aref st j 2) (1+ i))
              (setf (aref st j 0) (+ s amount)))))))
  (loop for i from 0 to (1- k)
        collect (aref st i 2)))

(defun main ()
  (let* ((n (read))
         (d (read))
         (k (read))
         (lr (make-array `(,d 2) :initial-contents (loop repeat d collect (list (read) (read)))))
         (st (make-array `(,k 3) :initial-contents (loop repeat k collect (list (read) (read) 0)))))
    (format t "~{~a~%~}" (solve d k lr st))))
(main)
