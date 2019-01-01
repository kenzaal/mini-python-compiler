#lang racket/base

(require "parser.rkt"
         "comp.rkt"
         "ast.rkt")

(define argv (current-command-line-arguments))
(cond
  ((= (vector-length argv) 1)
   (define in (open-input-string (vector-ref argv 0)))
   (define prog (calc-parse in))
   (write prog)
   (newline)
   (mips-compile prog (make-immutable-hash))
   (close-input-port in))
  (else
   (eprintf "Usage: racket prog.rkt \"prog\"\n")
   (exit 1)))


