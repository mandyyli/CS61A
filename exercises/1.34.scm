#lang racket
(require "../procedures.rkt")

(define (f g) (g 2))

(f square)

; (f f) cannot be evaluated as it would create a loop