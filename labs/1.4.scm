#lang racket
(require (planet dyoo/simply-scheme))

(define (dupls-removed sent)
  (cond ((empty? sent) '())
        ((member? (first sent) (bf sent))
                 (dupls-removed (bf sent)) )
        (else (se (first sent) (dupls-removed (bf sent)))) ))

(dupls-removed '(a b c a e d e b))