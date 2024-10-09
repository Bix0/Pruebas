#lang racket

(define suma-1
  (lambda (n)
    (+ n 1)))

(suma-1 3)


(define suma_list
  (lambda (fn list)
    (if (null? list)
        list
        (cons (fn (car list))
              (suma_list fn (cdr list))))))

;suma +1 a los elementos, y otra que reste 1 a la lista
(suma_list (lambda (x) (+ x 1)) (list 1 2 3))
(suma_list (lambda (x) (- x 1)) (list 1 2 3))

;ENUNCIADO: DADO UNA FUNCION

(define filtro
  (lambda (fn list)
    (if (null? list)
        list
        (if (fn (car list))
            (cons (car list)
                  (filtro fn(cdr list)))
            (filtro fn(cdr list))))))

(filtro (lambda (x) (> x 3 )) (list 1 2 3 4 5 76 4 5 7 8))


;DEFINICIONES
;MAP: recibe lista n -> lista n
;APPPLY: recibe lista n -> retorna un valor
;filtre: recibe list n -> retorna n reducida
