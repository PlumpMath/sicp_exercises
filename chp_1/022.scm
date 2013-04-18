;not quite what was asked for, but I don't have access to the runtime function
(define (search-for-primes lo hi max-primes)
  (define (search-for-primes-inner lo hi primes max-primes)
    (cond ((or (= lo hi) (= (length primes) max-primes)) primes)
    ((prime? lo) 
	   (search-for-primes-inner (+ lo 1) hi (cons lo primes)))
	  (else (search-for-primes-inner (+ lo 1) hi primes))))
  (search-for-primes-inner lo hi '() max-primes))
