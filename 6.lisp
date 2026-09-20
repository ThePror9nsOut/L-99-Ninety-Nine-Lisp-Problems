(defun main ()
  (print (palindromep '(x a m a x))))

(defun palindromep (lst)
  (equal lst (reverse lst)))

(main)
