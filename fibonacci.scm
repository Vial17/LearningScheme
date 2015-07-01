#lang racket
(require racket/trace)
 
(define fibonacci
  (lambda(n)
    (if (< n 2)
        1
        (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(define loop-test
  (lambda(f start end)
    (if (< start end)
        (begin (display start)
               (display " : ")
               (display (f start))
               (newline)
               (loop-test f (+ start 1) end))
        "")))

(loop-test fibonacci 0 10)