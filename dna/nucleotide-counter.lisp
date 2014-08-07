(defparameter *hash* (make-hash-table :test 'equal))
(format t "Enter sequence: ")
(let ((input (read-line)))
  (loop for nucleotide across input
	   do (setf (gethash nucleotide *hash*)
				(+ (gethash nucleotide *hash* 0) 1)))
  (format t "~D ~D ~D ~D"
		  (gethash #\A *hash*)		  
		  (gethash #\C *hash*)
		  (gethash #\G *hash*)
		  (gethash #\T *hash*)))
(quit)
