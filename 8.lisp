(defun main ()
  (print (compress '(a a a a b c c a a d e e e e) nil)))

(defun compress (lst acc)
  (if (equal lst nil)
    (reverse acc)
    (if (is-in (car lst) acc)
	       (compress (cdr lst) acc)
	       (compress (cdr lst) (cons (car lst) acc)))))

(defun is-in (e lst)
  (cond
    ((equal lst nil) nil)
    ((equal e (car lst)) t)
    (t (is-in e (cdr lst)))))

(main)
