#lang racket
(require racket/trace)

(define loop-display
  (lambda(n s)
    (if (= n 0)
        null
        (begin (display s)
               (newline)
               (loop-display (- n 1) s)))))

(loop-display 3 "Hello, world!")