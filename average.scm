#!/usr/bin/env guile -s
!#

;; Program finds the average of numerical inputs

;; Use module for text i/o
(use-modules (ice-9 textual-ports))

(display "This program takes input(s) and finds the average")
(newline)

;; Variable that holds the total of the inputs
(define total 0)

;; Variable that holds the number of inputs
(define i 0)

(display "Input a number (<Enter> to exit)")
(newline)

;; Variable for input
(define x "")

(while '(#t)
        (set! x (get-line (current-input-port)))
        (if (= 0 (string-length x)) (break))
        (if (not (number? (string->number x))) (break))
        (set! total (+ (string->number x) total))
        (set! i (+ i 1))
)

(display (string-append "Average: " (number->string (/ total i))))
(newline)

(display "Press <Enter> to end program")
(get-line (current-input-port))
