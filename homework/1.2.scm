#lang racket
(require (planet dyoo/simply-scheme))

(define (squares sent)
  (define (square x)
  (* x x))
  (if (empty? sent)
      '()
  (se (square (first sent))
      (squares (bf sent)) )))

(squares '(2 3 4 5))