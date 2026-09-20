(defun main ()
  (print (my-reverse '(1 2 3 4) nil)))

(defun my-reverse (lst acc)
  (if (equal lst nil)
    acc
    (my-reverse (cdr lst) (cons (car lst) acc)))
  )

(main)
