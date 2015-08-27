(defun last-index (s)
  (let ((n (dotimes (i (length s))
             (let ((idx (- (1- (length s)) i)))
               (if (equal #\. (aref s idx))
                   (return idx))))))
    (if (equal nil n) -1 n)))

(defun solve (r s time)
  (if (minusp (last-index s)) time
      (solve r (subseq s 0 (max 0 (- (last-index s) r))) (1+ time))))

(defun main ()
  (let* ((n (read))
         (r (1- (read)))
         (s (make-array n :initial-contents (coerce (read-line) `list))))
    (format t "~a~%" (solve r s (max (- (last-index s) r) 0)))))
(main)
