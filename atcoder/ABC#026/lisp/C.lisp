(defun calc-salary (b i)
  (if (zerop (length (nth i b))) 1
      (loop for j in (nth i b)
            maximizing (calc-salary b j) into max
            minimizing (calc-salary b j) into min
            finally (return (+ max min 1)))))

(defun main ()
  (let* ((n (read)) (b (loop repeat n collect nil)))
    (dotimes (i (1- n))
      (push (1+ i) (nth (1- (read)) b)))
    (format t "~a~%" (calc-salary b 0))))
(main)
