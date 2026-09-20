(defun main ()
  (print (my-last '(a b c d))))

(defun my-last (lst)
  (list (car (last (butlast lst))) (car (last lst))))

(main)
