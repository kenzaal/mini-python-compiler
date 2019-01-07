#lang racket/base

(require "parser.rkt"
         "comp.rkt"
         "ast.rkt")

(define argv (current-command-line-arguments))
  (cond
    ((= (vector-length argv) 1)
    (define in (open-input-file (vector-ref argv 0)))
    (define prog (prog-parse in))	
    (newline)
    (data)
    (mips-data (make-hash '((f . "\nFalse\n") (t . "\nTrue\n"))))
    (mips-data (make-hash '((nl . "\n"))))
    (define env (make-immutable-hash))
    (data-eval prog env)
    (newline)
    (text)
    (mips-function prog env)
    (newline)
    (main)
    (prog-eval prog env)
    (mips-exit)
    (newline)
    (close-input-port in))
  (else
    (eprintf "Usage: racket prog.rkt \"prog\"\n")
    (exit 1)))


