#lang sicp

; Task 1

(define (circleArea radius)
    (let ((pi(/ 22 7)))
       (if (<= radius 0)
           0
           (* pi (* radius radius)))))


; Example
(display (circleArea 3.2))
(newline)

; Answer from terminal :  32.182857142857145

; Task 2

(define (countDivisors number lst)
  (define (is-divisor? n divisor)
    (= (remainder n divisor) 0))
  
  (define (count-divisors-helper lst count)
    (cond
      ((null? lst) count)
      ((is-divisor? number (car lst))
       (count-divisors-helper (cdr lst) (+ count 1)))
      (else
       (count-divisors-helper (cdr lst) count))))
  
  (count-divisors-helper lst 0))

; Example usage:
(display (countDivisors 10 '(1 20 30 2 5 40 10 60)))
(newline)

; Answer from terminal : 4

; Task 3

(define (reverse lst)
  (define (rev-helper lst result)
    (if (null? lst)
        result
        (rev-helper (cdr lst) (cons (car lst) result))))
  (rev-helper lst '()))

(define (getEveryEvenElement lst)
  (define (helper lst index result)
    (cond
      ((null? lst) (reverse result))
      ((= (remainder index 2) 0)
       (helper (cdr lst) (+ index 1) (cons (car lst) result)))
      (else
       (helper (cdr lst) (+ index 1) result))))
  (helper lst 1 '()))


; Example usage:
(display (getEveryEvenElement '(a b c d)))
(newline)
; Answer from terminal : (d b)
(newline)

; (display (doSomething 'A '(Q R)))

(define (make-counter)
  (let ((count 0))
    (lambda ()
      (set! count (+ count 1))
      count)))

(define counter (make-counter))

(counter) ; Returns 1
(counter) ; Returns 2

