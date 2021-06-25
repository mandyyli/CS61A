#lang racket
(require (planet dyoo/simply-scheme))

(define (switch sent)
  (se (switch-first (first sent)) (switch-rest (bf sent)) ))

(define (switch-first wd)
  (cond ((equal? wd 'Me) 'You)
        ((equal? wd 'You) 'I)
        ((equal? wd 'I) 'You)
        (else wd) ))

(define (switch-rest sent)
  (if (empty? sent)
      '()
      (se (switch-one (first sent)) (switch-rest (bf sent)) )))
 
(define (switch-one wd)
  (cond ((equal? wd 'me) 'you)
        ((equal? wd 'you) 'me)
        ((equal? wd 'I) 'you)
        (else wd) ))

(switch '(You told me that I should wake you up))
  
  