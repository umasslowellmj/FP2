#lang racket
(require math/number-theory) 
(require math) 
(require math/base)
(require plot)
; we  will change as the user gives new input the value changes also
(define input
  (* 3 pi))
(define input1
  (- pi))
;(define x 2)
;(define y 4)

(plot3d (surface3d (λ (x y) (* (cos (* x x)) (sin y)))
                   (- pi) pi (- pi) pi)
          #:title "Sinus cosinus function visually"
         #:x-label "x" #:y-label "y" #:z-label "cos(x) sin(y)")

(plot (function sin input1 input #:label "y = sin(x)"))
