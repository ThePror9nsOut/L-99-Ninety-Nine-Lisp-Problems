(defun main ()
  (print (flatten '(a b (c (d f))))))

(defun flatten (lst)
  (labels ((recourse (lst acc)
  	(if (equal lst nil)
    	acc
    	(if (equal (type-of (car lst)) 'cons)
	  (recourse (car lst) acc)
	  (recourse (cdr lst) (append acc (list (car lst))))))))

  (recourse lst nil)))

(main)
