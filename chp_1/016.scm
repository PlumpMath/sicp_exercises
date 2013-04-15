(define (square x)
  (* x x))

; Take 1
(define (expnt base power)
  (define (expnt-iter base power-b power-a result)
    (cond 
      ((= power-b 0) result)
      ((and (even? power) (< power-a power-b) (> result 1)) 
       (expnt-iter base (/ power-b 2) (* power-a 2) (* result (square base))))
      (else (expnt-iter base (- power-b 1) (+ power-b 1) (* base result)))))
  (expnt-iter base power 0 1))

; Take 2
(define (expnt' base power)
  (define (expnt-iter base power result)
    (cond ((= 0 power) result)
          ((even? power) (expnt-iter (square base) (/ power 2) result))
          (else (expnt-iter base (- power 1) (* base result)))))
    (expnt-iter base power 1))

