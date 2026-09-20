(defun main ()
  (print (element-at '(a b c d) 3)))

(defun element-at (lst i)
  (if (= i 1)
    (first lst)
    (element-at (cdr lst) (- i 1))))

(main)
