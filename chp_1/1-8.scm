(define (square x)
  (* x x))

(define (cbrt-iter guess x)
  (if (good-enough? guess)
    guess
    (cbrt-iter (improve guess x) x )))

(define (improve guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (good-enough? guess)
  (< (abs (- (improve guess x) guess))
     (* guess .001)))

(define (cbrt x)
  (cbrt-iter 1.0 x))
