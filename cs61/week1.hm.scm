;; Squares - takes a sentence of numbers
;; as an argument and returns a sentence of it's squares

(define (square x) (* x x))

(define (squares sent)
  (display sent) (newline)
  (cond ((empty? sent) sent)
        (se (square (first sent)) (squares (bf sent))) ))

(squares '(2 4 6 8))
