#lang racket
(require "../procedures.rkt")

(define (compose f g)
  (lambda(x) (f (g x))) )

((compose square inc) 6)


