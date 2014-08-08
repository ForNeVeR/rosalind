(defun reverse-dna (nucleotide)
  (cond ((eql nucleotide #\T) #\A)
		((eql nucleotide #\A) #\T)
		((eql nucleotide #\C) #\G)
		((eql nucleotide #\G) #\C)))

(format t "Enter string: ")
(let* ((input (read-line))
	  (result (reverse (map 'string #'reverse-dna input))))
  (format t "~%~a" result))

(quit)
