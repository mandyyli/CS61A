#lang racket
(require "../procedures.rkt")

;A procedure to approximate zeros of the cubic x^3 + ax^2 + bx + c.

(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cubic a b c)
  (lambda (x) (+ (cube x) (* a (square x)) (* b x) c)) )

(define (cubic-solve a b c)
  (newtons-method (cubic a b c) 1) )

(cubic-solve -6 11 -6)