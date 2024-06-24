#lang racket

(define (getPositiveOddValues lst)
   ; A helper to check if a number is positive odd                                                                                                                                                                                                                                                                            
  (define (isPositiveOdd n)
    (and (positive? n) (odd? n)))

  ; Extracting postive odd values.
  (if (null? lst)
      '()
      (let ((first-value (car lst))
            (rest-values (cdr lst)))
        (if (isPositiveOdd first-value)
            (cons first-value (getPositiveOddValues rest-values))
            (getPositiveOddValues rest-values)))))

(getPositiveOddValues '())       ; Output: ()
(getPositiveOddValues '(1 2 7 -3 4))  ; Output: (1 7)
(getPositiveOddValues '(2 4 6))  ; Output: ()
(getPositiveOddValues '(-1 -3)) ; Output: ()
(getPositiveOddValues '(1 3 5))  ; Output: (1 3 5)
