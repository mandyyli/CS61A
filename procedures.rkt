#lang racket
(require (planet dyoo/simply-scheme))

(provide (all-defined-out))

(define (square n) (* n n))
(define (cube n) (* n n n))
(define (inc n) (+ 1 n))

(define (prime? n)
  (define (smallest-divisor n) (find-divisor n 2))
  (define (find-divisor n test-divisor)
    (cond ((> ((lambda(x) (* x x)) test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  (define (divides? a b) (= (remainder b a) 0))
  (= n (smallest-divisor n)))

(define (average x y)
  (/ (+ x y) 2))

(define dx 0.00001)

(define (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define (every procedure sent)
  (define (iter procedure sent)
    (if (empty? sent)
      '()
      (se (procedure (first sent))
          (iter procedure (bf sent)) )))
  (iter procedure sent) )