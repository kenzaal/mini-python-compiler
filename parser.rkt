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
    (debug "yacc")
    (grammar

       (prog
	  ((expr)                (list $1))
          ((declaration)         (list $1))
          ((declaration prog)    (cons $1 $2))
          ((expr prog)           (cons $1 $2)))

       (expr
          ((val)                $1)
          ((operation)          $1)
          ((funcall)            $1)
          ((nt)                 $1)
          ((return)             $1)
          ((test)               $1)
          ((loop)               $1)
          ((for)                $1)
          ((print)              $1))

      (declaration
          ((Lid Lassign sexpr)                     (Pdef (Pid $1) $3))
          ((Ldef Lid Lopar fargs Lcpar Lcol expr)  (Pfunc (Pid $2) $4 $7)))

      (fargs
          ((Lid Lcomma fargs) (cons (Pid $1) $3))
          ((Lid)              (list (Pid $1)))
          ((Lnil)             (list (Pid 'nil))))
     
      (callargs
          ((sexpr Lcomma fargs) (cons (Pid $1) $3))
          ((sexpr)              (list (Pid $1)))
          ((Lnil)               (list (Pid 'nil))))

      (return 
          ((Lret sexpr)       $2))

     (funcall
          ((Lid Lopar callargs Lcpar)   (Pfuncall (Pid $1) $3)))

      (print
          ((Lprint Lopar Lcot expr Lcot Lcpar)  (Pprint $4))
          ((Lprint Lopar sexpr Lcpar)       (Pprint_op $3))
          ((Lprint Lopar val Lcpar)             (Pprint_var $3)))
      
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

      (nt
          ((Lnot sexpr)  (Pnot 'not $2))) 
        
      (val
          ((Lnum)      (Pval $1))
          ((Lid)       (Pid $1))
          ((Lbool)     (Pbool $1)))

      (test  
          ((Lif expr Lcol expr Lelse Lcol expr)    (Pcond $2 $4 $7)))
 
      (loop
          ((Lwhile expr Lcol expr)   (Ploop $2 $4)))

     (for
       ((Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr)  (Pfor (Pid $2) (Pval $6) (Pval $8) $11)))
     
      (sexpr
          ((val)                $1)
          ((operation)          $1)
          ((nt)                 $1)))
 
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
           (left Lnot)
           (left Lor))
    (error
        (lambda (ok? name value)
        (error 'Parser "Error?")))))

(define (calc-parse in)
  (parse (lambda () (calc-lex in))))
