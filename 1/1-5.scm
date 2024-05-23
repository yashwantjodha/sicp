(define (p) (p))
(define (test x y)
        (if (= x 0) 0 y))

(test 0 (p))

;; Normal Order: When test procedure is called, it will look for value of p.
;;               Since p is defined to be p itself, it will get stuck in an infinite loop.

;; Applicative Order: In the test procedure value of p is not used when first argument is 0.
;;                    It will evaluates to 0.