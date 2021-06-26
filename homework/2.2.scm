#lang racket
(require "../procedures.rkt")

(define (every procedure sent)
  (define (iter procedure)
    
    (if (empty? sent)
      '()
      (se (procedure (first sent))
          (procedure (bf sent)) )))

(every square ’(1 2 3 4))