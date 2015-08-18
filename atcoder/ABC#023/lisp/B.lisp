(defun solve (n s i r)
  (if (<= n (length r))
      (if (equalp s r) i -1)
      (solve n s (+ i 1) (format nil "~a~a~a" (nth (mod i 3) `(a c b)) r (nth (mod i 3) `(c a b))))))

(defun main ()
  (format t "~a~%" (solve (read) (read-line) 0 "b")))
(main)
