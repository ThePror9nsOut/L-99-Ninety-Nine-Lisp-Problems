(defun main ()
  (pack '(a a b b c a b)))

(defun pack (lst)
  (labels
    ((pack-sym (lst sym acc)
	       (if (equal (type-of (car lst)) cons)
		 (pack-sym (cdr lst) (cadr lst))
		(if (eql sym (car lst)
		 (pack-sym (cdr lst) (car lst) (cons (car lst) acc))
		 (cons acc lst))
		 )))

     (accum (lst acc)
	    ())
     )

    (print (pack-sym lst (car lst) nil))
    )
)

(main)
