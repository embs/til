(define (factorial x)
  (cond ((= x 1) 1)
        ((> x 1) (* x (factorial (- x 1))))
  )
)

(define (xor a b)
  (if (and (not (and a b)) (or a b))
      #t
      #f
  )
)

(define (xor a b)
  (cond ((and (not (and a b)) (or a b)) #t)
        (else #f)
  )
)

(define (xor a b) (and (not (and a b)) (or a b)))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (larger x y) (if (> x y) x y))

(define (>= x y) (or (> x y) (= x y)))
(define (<= x y) (or (< x y) (= x y)))

(define (sum-of-largers-squares x y z)
  (cond ((>= x y) (if (>= y z) (sum-of-squares x y) (sum-of-squares x z)))
        ((<= x y) (if (>= z x) (sum-of-squares y z) (sum-of-squares x y)))
  )
)

(define (sqrt-approximator guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-approximator (improve guess x) x)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

(define (my-sqrt x) (sqrt-approximator 1.0 x))

(my-sqrt 9)

(define (sqrt-approximator guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-approximator (improve guess x) guess x)))

(define (good-enough? guess previous-guess)
  (< (abs (- guess previous-guess)) 0.00001))

(define (my-sqrt x) (sqrt-approximator 1.0 0.0 x))

(< (abs (- (sqrt .0002) (my-sqrt .0002))) .00000000000001)
(< (abs (- (sqrt .99999) (my-sqrt .99999))) .0000000001)

; For cube root.

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (curt x) (my-sqrt x))
