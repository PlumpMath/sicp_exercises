; (sqrt .00000000004) results in 0.03125, which is off 
;   by several orders of magnitude
; For large numbers, it can't come within .001

(define (sqrt-iter guess x)
  (if (good-enough? guess)
    guess
    (sqrt-iter (improve guess x) x )))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess)
  (< (abs (- (improve guess x) guess))
     (* guess .001)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
