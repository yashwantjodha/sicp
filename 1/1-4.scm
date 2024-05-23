(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; if condition will evaluate to + or - operator. Making b absolute.
; a + b if b is positive. a - (-b) if b is negative. === a + |b|