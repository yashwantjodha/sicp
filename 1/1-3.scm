(define (square a) (* a a))
(define (sum-of-squares a b) (+ (square a) (square b)))
(define (sum-of-squares-of-larger-two a b c)
    (cond ((and (< a b) (< a c)) (sum-of-squares b c))
          ((and (< b c)) (sum-of-squares a c))
          (else (sum-of-squares a b))))

(print (sum-of-squares-of-larger-two 8 8 8)) ; => 128
(print (sum-of-squares-of-larger-two 9 10 11)) ; => 221
(print (sum-of-squares-of-larger-two 11 10 9)) ; => 221
(print (sum-of-squares-of-larger-two 11 12 9)) ; => 265