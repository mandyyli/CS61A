#lang racket
(require (planet dyoo/simply-scheme))

(define (every procedure sent)
  (define (iter procedure sent)
    (if (empty? sent)
      '()
      (se (procedure (first sent))
          (iter procedure (bf sent)) )))
  (iter procedure sent) )

(every first '(nowhere man))
