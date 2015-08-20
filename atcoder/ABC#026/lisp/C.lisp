(defun calc-salary (b i)
  (let ((b-i-sub (aref b i))) 
    (if (zerop (length b-i-sub)) 1
        (loop for j from 0 to (1- (length b-i-sub))
              maximizing (calc-salary b (nth j b-i-sub)) into max
              minimizing (calc-salary b (nth j b-i-sub)) into min
              finally (return (+ max min 1))))))

(defun main ()
  (let* ((n (read)) (b (make-array n :initial-contents (loop repeat n collect nil))))
    (loop for i from 1 to (1- n)
          for i-boss = (1- (read))
          do (push i (aref b i-boss)))
    (format t "~a~%" (calc-salary b 0))))
(main)
