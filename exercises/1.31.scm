#lang racket
(require (planet dyoo/simply-scheme))

;recursive method
;(define (product term a next b)
;  (if (> a b)
;     1
;     (* (term a)
;        (product term (next a) next b) )))

;iterative method
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result)) ))
  (iter a 1) )

(define (factorial b)
  (product (lambda (x) x) 1 (lambda(x) (+ x 1)) b) )

(factorial 4)

;  π     2 · 4 · 4 · 6 · 6 · 8 ···
; --- = --------------------------
;  4     3 · 3 · 5 · 5 · 7 · 7 ···


(define (pi terms)
  (* 4 (/ (product (lambda(x)(* x (+ x 2))) 2 (lambda(x)(+ x 2)) terms)
          (product (lambda(x)(* x x)) 3 (lambda(x)(+ x 2)) (+ terms 1)) )))

(pi 1000)