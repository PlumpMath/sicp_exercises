(define (square x) (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y)))

(define (is-greatest x y z)
  (and (>= x y) (>= x z)))

(define (largest x y z)
  (cond ((is-greatest x y z) x)
        ((is-greatest y x z) y)
        (else z)))

(define (is-between x y z)
  (or (and (>= x y) (<= x z))
      (and (>= x z) (<= x y))))

(define (second-largest x y z)
  (cond ((is-between x y z) x)
        ((is-between y x z) y)
        (else z)))

(define (sum-of-squares-largest x y z)
    (sum-of-squares (largest x y z) (second-largest x y z)))
