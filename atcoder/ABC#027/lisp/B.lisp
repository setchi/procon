(defun solve(N)
	(let* ((a (loop repeat N collect (read))) (aSum (reduce #'+ a)))
		(if (/= 0 (mod aSum N))
		-1
		(loop for i from 0 to N count (/= (reduce #'+ (subseq a i N)) (* (floor (/ aSum N)) (- N i)))))))

(format t "~a~&" (solve (read)))
