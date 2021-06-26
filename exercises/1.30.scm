#lang racket
(require (planet dyoo/simply-scheme))

; sum from n=a to b of n^3

(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
     0
     (+ (term a)
        (sum term (next a) next b) )))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum cube a inc b))

(sum-cubes 1 10)