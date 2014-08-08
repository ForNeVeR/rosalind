(defun transcribe (nucleotide)
  (cond ((eql nucleotide #\T) #\U)
		(t nucleotide)))

(format t "Enter string: ")
(let* ((input (read-line))
	  (result (map 'string #'transcribe input)))
  (format t "~a" result))

(quit)
  
