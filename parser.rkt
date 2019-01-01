#lang racket/base

(require "lexer.rkt"
         parser-tools/yacc
         "ast.rkt")

(provide calc-parse)

(define parse
  (parser
    (tokens operators values names punctuations keywords)
     (start prog)
     (end Eof)
     (grammar
       (prog
	  ((expr)              (list $1))
          ((val Lassign expr)  (Pdef $1 $3))) 
       (expr
          ((val)                $1)
          ((operation)          $1)
          ((test)               $1))
       (operation 
          ((expr Lplus expr)   (Pop 'add $1 $3))
	  ((expr Lminus expr)  (Pop 'sub $1 $3))
          ((expr Lstar expr)   (Pop 'mul $1 $3))
          ((expr Lslash expr)  (Pop 'div $1 $3))
          ((expr Lsup expr)    (Pop 'sup $1 $3))
          ((expr Linf expr)    (Pop 'inf $1 $3))
          ((expr Lseq expr)    (Pop 'seq $1 $3))
          ((expr Lieq expr)    (Pop 'ieq $1 $3))
          ((expr Leq expr)     (Pop 'eq $1 $3))
          ((expr Lneq expr)    (Pop 'neq $1 $3))
          ((expr Lmod expr)    (Pop 'mod $1 $3)))
       (val
          ((Lnum)              (Pval $1))
          ((Lid)               (Pid $1)))
       (test  
          ((Lif expr Lcol expr Lelse Lcol expr)       (Pcond $2 $4 $7))))
       (precs (left Lplus)
              (left Lminus)
              (left Lstar)
              (left Lslash)
              (left Lsup)
              (left Linf)
              (left Lseq)
              (left Lieq)
              (left Leq)
              (left Lneq)
              (left Lmod))
       (error
           (lambda (ok? name value)
           (error 'Parser "Error?")))))

(define (calc-parse in)
  (parse (lambda () (calc-lex in))))
