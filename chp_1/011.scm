(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) 
       (* 2 (f (- n 2))) 
       (* 3 (f (- n 3))))))

(define (f-iter n)
  (define (f n1 n2 n3 count)
    (if (= count 0)
      n1
      (f (+ n1 n2 n3)
          (+ n1 n1)
          (/ (* 3 n2) 2)
          (- count 1))))
  (if (< n 3)
    n 
    (f 2 2 0 (- n 2))))


(display (f 0)) (newline)
(display (f 1)) (newline)
(display (f 2)) (newline)
(display (f 3)) (newline)
(display (f 4)) (newline)
(display (f 5)) (newline)
(display (f 6)) (newline)
(display (f 7)) (newline)
(display (f 8)) (newline)

(newline)

(display (f-iter 0)) (newline)
(display (f-iter 1)) (newline)
(display (f-iter 2)) (newline)
(display (f-iter 3)) (newline)
(display (f-iter 4)) (newline)
(display (f-iter 5)) (newline)
(display (f-iter 6)) (newline)
(display (f-iter 7)) (newline)
(display (f-iter 8)) (newline)
