#lang racket
(require "../procedures.rkt")

(define (iterative-improve good-enough guess-improve)
  (define (iter guess x)
    (if (good-enough guess x)
        guess
      (iter (guess-improve guess x) x)))
  (lambda(x) (iter 1.0 x)) )


;sqrt procedure
(define (sqrt-improve guess x)
  (average guess (/ x guess)))
(define (sqrt-good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
  
(define (sqrt x)
  ((iterative-improve sqrt-good-enough? sqrt-improve) x) )


;fixed-point procedure
(define tolerance 0.00001)
(define (close-enough? guess f)
    (< (abs (- guess (f guess)))
       tolerance))
(define (fp-improve guess f)
    (f guess))


(define (fixed-point f)
  ((iterative-improve close-enough? fp-improve) f) )

;(fixed-point cos) = 0.7390822985224023