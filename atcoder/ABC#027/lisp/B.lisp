(defun solve(N)
	(let* ((a (loop repeat N collect (read))) (a-sum (reduce #'+ a)))
		(if (/= 0 (mod a-sum N))
		-1
		(loop for i from 0 to N count (/= (reduce #'+ (nthcdr i a)) (* (floor (/ a-sum N)) (- N i)))))))

(format t "~a~&" (solve (read)))
