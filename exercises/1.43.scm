#lang racket
(require "../procedures.rkt")

;usage: ((repeated square 2) 5) = 625

(define (repeat-once f a n)
  (if (= a n)
      f
      (repeat-once (lambda (x) (f (f x))) (+ a 1) n)) )

(define (repeated f n)
  (repeat-once f 1 n))



((repeated square 2) 5)