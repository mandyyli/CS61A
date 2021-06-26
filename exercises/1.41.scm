#lang racket
(require "../procedures.rkt")


(define (double g)
  (lambda(x) (g (g x))) )

((double inc) 5)