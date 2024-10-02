#lang racket
(define (media a b)
  (/(+ a b)2))
(define(factorial n)
  (if (= n 0) 1
      (* n(factorial (- n 1))
         )
      )
  )

(list(cons (2 2) (cons (-8 1) (cons (6 0)))))
