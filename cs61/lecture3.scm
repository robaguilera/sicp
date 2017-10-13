;; Functional Programming
;; Identify patterns

(define (sum fn a b)
  (if (> a b)
    0
    (+ (fn a) (sum fn (+ a 1) b)) ))

(define (square x) (* x x))

(define (circle x) (* x x x))

;; passing square as data which gets invoked in ( sum )
(sum circle 3 4)

;; domain - what kinds of things does it take as arguments 
;; range - whats kinds of things does it return as a result

(define (evens nums) 
  (cond ((empty? nums) '())
        ((= (remainder (first nums) 2) 0)
         (se (first nums) (evens (bf nums)) )
        (else (evens (bf nums))) ))

(evens '(1 4 5 2 6 8))
  

(define (ewords sent)
  (cond ((empty? sent) '(empty))
        ((member? 'e (first sent))
         (se (first sent) (ewords (bf sent))) )
        (else (ewords (bf sent))) ))

(ewords '(got to get you into my life))
(ewords '())

(define (pronouns sent)
  (cond ((empty? sent) '())
        ((member? (first sent) '(I me you be the it him her we us they them))
         (se (first sent) (pronouns (bf sent))))
         (else (pronouns (bf sent))) ))
(pronouns '(I only want to dance with you))

(define (keep PRED sent)
  (cond ((empty? sent) '())
        ((PRED (FIRST SENT))
        (se (first sent (keep PRED (bf sent))))
        (else (keep PRED (bf sent)))))

(define (eword? wd) (member? 'e wd))

(keep eword? '(got to get you into my life))

(define square (lambda (x) (* x x)))
(square 4)
