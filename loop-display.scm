#lang racket
(require racket/trace)

(define loop-display
  (lambda(n s)
    (if (> n 0)
        (begin (display s)
               (newline)
               (loop-display (- n 1) s))
        null)))

(loop-display 3 "Hello, world!")
