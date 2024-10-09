#lang racket
;formas de hacer fn

(define mi-fn
  (lambda (arg1 arg2)
    (list arg1 arg2)))

(define (mi-fn2 arg1 arg2 )
  (list arg1 arg2))

(mi-fn 1 2)
(mi-fn2 1 2)


;calculo lambda 
(define suma-3
  (lambda (arg1 arg2 arg3)
    (+ arg1 arg2 arg3)))

(suma-3 3 2 1)
;Haskell Curry: lenguaje
;Curry:L-xyz -> Lx -> Ly-> Lz

(define suma-v2
  (lambda (arg1)
    (lambda (arg2)
      (lambda (arg3)
        (+ arg1 arg2 arg3)))))
      
;esto funciona con la metodologia "HIGH ORDER FUNCTIONS:
;Funcion que retorna y/o retorne fn
(((suma-v2 7)6)5)


;sumatoria de n numeros:
;desde el 1 hasta el 4

(define sumatoria
  (lambda (n)
    (if(eq? 0 n)
       0
       ;else
       (+ n (sumatoria (- n 1))))))

(sumatoria 4)




;(define sumatoria-v2
 ; (lambda (i n)
  ;  (define sumatoria-aux
   ;   (lambda (i n aux)
    ;    (if (= i n)
     ;       (+ i aux)
      ;      (sumatoria-v2 (+ i 1) n ( + i aux)
                          


;sumatoria con acum (sin estados pendientes)
(define suma-v3
  (lambda (n acum)
         (if (eq? n 0)
             acum
             (suma-v3 ( - n 1) (+ acum n)))))

(suma-v3 6 0)



;sumatoria version edmundo
(define sumatoria-v4
  (lambda (n)
    (define sum-interna
      (lambda (n acum)
        (if (eq? n 0)
            acum
            (sum-interna (- n 1) (+ acum n)))))
    (sum-interna n 0)))

(sumatoria-v4 9)

;ejercicio rec natural (saber el largo de una list
;length list(1 2 3) = 3


(define largo
  (lambda (lst)
    (if(null? lst)
       0
       (+ 1 (largo (cdr lst))))))

(largo(list 1 2 3 4))


;recursion de cola
(define largo-v2
  (lambda (lst)
    (define largo-inner
      (lambda (lst acum)
        (if (null? lst)
                   acum
                   (largo-inner (cdr lst) (+ 1 acum)))))
    (largo-inner lst 0)))

(largo-v2 (list 1 2 8 4 5))
    
                           
;EJERCICIOS
;rec:
;(sum-1 fn(list 1 2 3 4)) -> (2 3 4 5)


     
      