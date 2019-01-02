#lang racket/base

(require "parser.rkt"
         "comp.rkt"
         "ast.rkt")

(define argv (current-command-line-arguments))
(cond
  ((= (vector-length argv) 1)
   (define in (open-input-file (vector-ref argv 0)))
   (define prog (calc-parse in))
  ;; (write prog) 	
   (newline)
   (data)
   (mips-data (make-hash '((f . "\nFalse\n") (t . "\nTrue\n"))))
   (mips-data (make-hash '((nl . "\n"))))
   (data-eval prog (make-immutable-hash))
   (main)
   (prog-eval prog (make-immutable-hash))
   (mips-exit)
   (newline)
   (close-input-port in))
  (else
   (eprintf "Usage: racket prog.rkt \"prog\"\n")
   (exit 1)))


