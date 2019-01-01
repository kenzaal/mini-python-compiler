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
	  ((expr)              $1))

       (expr
          ((val)                $1)
          ((operation)          $1)
          ((test)               $1)
          ((print)              $1)
          ((declaration)        $1))

      (declaration
         ((Lid Lassign sexpr)  (Pdef $1 $3)))

      (print
        ((Lprint Lopar Lcot expr Lcot Lcpar)  (Pprint $4)))
      
       (operation 
          ;;;;;;;;Opérations arithmétiques;;;;;;
          ((sexpr Lplus sexpr)   (Pop 'add $1 $3))
	  ((sexpr Lminus sexpr)  (Pop 'sub $1 $3))
          ((sexpr Lstar sexpr)   (Pop 'mul $1 $3))
          ((sexpr Lslash sexpr)  (Pop 'div $1 $3))
          ((sexpr Lmod sexpr)    (Pop 'mod $1 $3))
          ;;;;;;;Operations de comparaisons;;;;;
          ((sexpr Lsup sexpr)    (Pop 'sup $1 $3))
          ((sexpr Linf sexpr)    (Pop 'inf $1 $3))
          ((sexpr Lseq sexpr)    (Pop 'seq $1 $3))
          ((sexpr Lieq sexpr)    (Pop 'ieq $1 $3))
          ((sexpr Leq sexpr)     (Pop 'eq $1 $3))
          ((sexpr Lneq sexpr)    (Pop 'neq $1 $3))
          ;;;;;;;;Operations logiques;;;;;;;;;;;
          ((sexpr Land sexpr)    (Pop 'and $1 $3))
          ((sexpr Lor sexpr)     (Pop 'or $1 $3)))

       (val
          ((Lnum)              (Pval $1))
          ((Lid)               (Pid $1)))

       (test  
          ((Lif expr Lcol expr Lelse Lcol expr)       (Pcond $2 $4 $7))
          ((Lif expr Lcol expr)                       (Pcondthen $2 $4)))
       (sexpr
          ((val)    $1)
          ((operation)  $1)))
 
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
           (left Lmod)
           (left Land)
           (left Lor))
    (error
        (lambda (ok? name value)
        (error 'Parser "Error?")))))

(define (calc-parse in)
  (parse (lambda () (calc-lex in))))
