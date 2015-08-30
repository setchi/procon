(defun solve (s)
  (format nil "~{~A~^ ~}"
          (loop for i from (char-code #\A) to (char-code #\F)
                collect (count (code-char i) s))))

(format t "~a~%" (solve (loop repeat 5 collect (read))))
