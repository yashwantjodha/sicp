(define (square x) (* x x))
(define (cube x) (* x x x))

(define (cbrt-iter guess x)
        (if (good-enough? (cube guess) x)
            guess
            (cbrt-iter (improve guess x) x)))

(define (improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess))
            3))

(define (good-enough? guess x)
        (< (abs (- guess x)) 0.001))

(define (cbrt x)
        (cbrt-iter 2.0 x))

(print (cbrt 5))
(print (cbrt 100))
(print (cbrt 27))