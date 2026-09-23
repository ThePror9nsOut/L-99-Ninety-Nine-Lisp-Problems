(defun main ()
  (print (dupli '(a b c c d))))

(defun dupli (lst)
  (labels ((recourse (lst acc)
		     (if (null lst)
		       acc
		       (recourse (cdr lst) (append acc (list (car lst) (car lst)))))))

    (recourse lst nil)))

(main)
