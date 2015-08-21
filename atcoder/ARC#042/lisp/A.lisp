(defun solve (n m a)
  (let ((order (make-array n :initial-contents (loop for i from 1 to n
                                                     collect (list i (- n i))))))
    (dotimes (i m)
      (setf (second (aref order (aref a i))) (+ i n)))
    (sort order #'(lambda (a b) (> (second a) (second b))))
    (loop for i from 0 to (1- (length order))
          collect (first (aref order i)))))

(defun main ()
  (let* ((n (read))
         (m (read))
         (a (make-array m :initial-contents (loop repeat m collect (1- (read))))))
    (format t "~{~a~%~}" (solve n m a))))
(main)
