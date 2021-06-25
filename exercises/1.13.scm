#lang racket
(require (planet dyoo/simply-scheme))

(define (sum-of-squares a b c)
  (define (sumsq a b) (+ (* a a) (* b b)))
  (cond ((and (>= a c) (>= b c)) (sumsq a b))
        ((and (>= a b) (>= c b)) (sumsq a c))
        (else (sumsq b c)) ))

(sum-of-squares 4 3 2)
(sum-of-squares 3 4 2)
(sum-of-squares 3 2 4)