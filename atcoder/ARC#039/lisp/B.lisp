(defun fact (n)
  (if (zerop n) 1
      (* n (fact (1- n)))))

(defun nCr (n r)
  (/ (fact n) (* (fact r) (fact (- n r)))))

(defun solve (n k)
  (mod (if (< k n)
           (nCr (+ n k -1) k)
           (nCr n (mod k n)))
       1000000007))

(defun main ()
  (format t "~a~%" (solve (read) (read))))
(main)
