(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (first-is-smallest? x y z)
    (if (and (< x y) (< x z)) #t #f)
)

(define (sum-squares-2-largest x y z)
    (cond ((first-is-smallest? x y z) (sum-squares y z))
          ((first-is-smallest? y x z) (sum-squares x z))
          (else (sum-squares x y))  
    )
)

(sum-squares-2-largest 1 2 3)
