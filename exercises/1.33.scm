#lang racket
(require "../procedures.rkt")

(define (filtered-accumulate filter combiner null-value term a next b)
 (cond ((> a b) null-value)
       ((filter a) (combiner (term a)
                                   (filtered-accumulate filter combiner null-value term (next a) next b) ))
       (else (filtered-accumulate filter combiner null-value term (next a) next b)) ))


;the sum of the squares of the prime numbers in the
;interval a to b
(define (sumsq-prime a b)
  (filtered-accumulate prime? + 0 square a inc b))

;the product of all the positive integers less than n that
;are relatively prime to n (i.e., all positive integers i < n
;such that GCD(i, n) = 1)
(define (prod-rel-prime n)
  (filtered-accumulate (lambda(x) (= 1 (gcd x n))) * 1 (lambda(x) x) 1 inc n))

(prod-rel-prime 7)