;; Square Root Procedure
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))
(abs -2)

(define (square x) (* x x))

(define (sqrt-iter guess x) 
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x) 
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;; improved by using lexical scoping to "hide" inner implementation
;; as the only black-box procedure we need to know about is sqrt
(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define( improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
      guess(sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
(sqrt 20000)
