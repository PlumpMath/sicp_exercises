(define (dbl a)
    (* a 2))
(define (hlf a)
  (/ a 2))

(define (mul a b)
  (cond ((= b 0) 0)
        ((even? b) (dbl (mul a (hlf b))))
        (else (+ a (mul a (- b 1)))))) 
