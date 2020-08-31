;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |HW 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;exercise 1.15
(define duple 
  (lambda (itemWant howMany)
    (if (= howMany 0)
        '()
        (cons itemWant (duple itemWant (- howMany 1))))))
(duple 'haha 4)

;exercise 1.16
(define invert
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (list
        (car (cdr (car(lst))))
              (car (car (lst)))
                    (invert(cdr lst)))))))

;exercise 1.17
(define down
  (lambda (lst)
    (if(null? lst)
       '()
       (cons(list (car lst))(down(cdr lst))))))
