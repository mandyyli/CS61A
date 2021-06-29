#lang racket
(require (planet dyoo/simply-scheme))


;(every (lambda (letter) (word letter letter)) 'purple)

((lambda (a b)
   ((lambda (square)
      (+ (square a) (square b)))
    (lambda (x) (* x x))))
 3 4)