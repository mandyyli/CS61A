#lang racket
(require (planet dyoo/simply-scheme))

(define (ordered? sent)
  (cond ((empty? (bf sent)) #t)
        ((> (first sent) (first (bf sent))) #f)
        (else (ordered? (bf sent))) ))




(ordered? '(2 3 4 5))