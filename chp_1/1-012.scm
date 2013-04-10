(define (pascal level index)
  (if (or (= index 0) (= index level))
    1
    (+ (pascal (- level 1) (- index 1))
       (pascal (- level 1) index))))

(display (pascal 0 0)) (newline)
(newline)

(display (pascal 1 0)) (newline)
(display (pascal 1 1)) (newline)
(newline)

(display (pascal 2 0)) (newline)
(display (pascal 2 1)) (newline)
(display (pascal 2 2)) (newline)
(newline)

(display (pascal 3 0)) (newline)
(display (pascal 3 1)) (newline)
(display (pascal 3 2)) (newline)
(display (pascal 3 3)) (newline)
(newline)

(display (pascal 4 0)) (newline)
(display (pascal 4 1)) (newline)
(display (pascal 4 2)) (newline)
(display (pascal 4 3)) (newline)
(display (pascal 4 4)) (newline)
(newline)
