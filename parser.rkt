;;Ce fichier contient les outils nécessaires à l'analyse syntaxique
#lang racket/base

(require "lexer.rkt"
         parser-tools/yacc
         "ast.rkt")

(provide prog-parse)

;;cette fonction contient des régles de syntaxe qui forment la grammaire du langage à compiler 
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
          ((max)                $1)
          ((min)                $1)
          ((test)               $1)
          ((while)              $1)
          ((for)                $1)
          ((print)              $1))
       ;;déclaration de variables/fonctions
       (declaration
          ((Lid Lassign sexpr)                     (Pdef (Pid $1) $3))
          ((Ldef Lid Lopar fargs Lcpar Lcol expr)  (Pfunc (Pid $2) (Pfargs $4) $7)))
       ;;les argument d'une fonction
       (fargs
          ((Lid Lcomma fargs) (cons (Pfargs $1 $3)))
          ((Lid)              (list (Pfargs $1)))
          ((Lnil)             (list (Pfargs 'nil))))
       ;;les argument d'un appel à une fonction
       (callargs
          ((sexpr Lcomma fargs) (cons (Pcallargs (Pid $1) $3)))
          ((sexpr)              (list (Pcallargs (Pid $1))))
          ((Lnil)               (list (Pcallargs (Pid 'nil)))))
       ;;max entre deux expressions singuliéres
       (max
          ((Lmax Lopar sexpr Lcomma sexpr Lcpar)   (Pmax $3 $5)))
       ;;min entre deux expressions singuliéres
       (min
          ((Lmin Lopar sexpr Lcomma sexpr Lcpar)   (Pmin $3 $5)))
       ;;retour d'une fonction
       (return 
          ((Lret sexpr)       (Pret $2)))
       ;;appel de fonction
       (funcall
          ((Lid Lopar callargs Lcpar)   (Pfuncall (Pid $1) $3)))
       ;;affichage de chaîne de caractaires, opération ou valeur
       (print
          ((Lprint Lopar Lcot expr Lcot Lcpar)  (Pprint $4))
          ((Lprint Lopar sexpr Lcpar)           (Pprint_op $3))
          ((Lprint Lopar val Lcpar)             (Pprint_var $3)))
       ;;les opération entre les numéros
       (operation 
          ;;;;;;;;Opérations arithmétiques;;;;;;
          ((sexpr Lplus sexpr)   (Pop 'add $1 $3))
	  ((sexpr Lminus sexpr)  (Pop 'sub $1 $3))
          ((sexpr Lstar sexpr)   (Pop 'mul $1 $3))
          ((sexpr Lslash sexpr)  (Pop 'div $1 $3))
          ((sexpr Lmod sexpr)    (Pop 'mod $1 $3))
          ((sexpr Lexpt sexpr)   (Pop 'exp $1 $3))
          ;;;;;;;Operations de comparaisons;;;;;
          ((sexpr Lsup sexpr)    (Pop 'sup $1 $3))
          ((sexpr Linf sexpr)    (Pop 'inf $1 $3))
          ((sexpr Lseq sexpr)    (Pop 'seq $1 $3))
          ((sexpr Lieq sexpr)    (Pop 'ieq $1 $3))
          ((sexpr Leq sexpr)     (Pop 'eq $1 $3))
          ((sexpr Lneq sexpr)    (Pop 'neq $1 $3))
          ;;;;;;;;Operations logiques;;;;;;;;;;;
          ((sexpr Land sexpr)    (Pop 'and $1 $3))
          ((sexpr Lor sexpr)     (Pop 'or $1 $3))
          ((sexpr Lsll sexpr)    (Pop '<< $1 $3))
          ((sexpr Lsrl sexpr)    (Pop '>> $1 $3)))
       ;;opération logique not
       (nt
          ((Lnot sexpr)  (Pnot 'not $2))) 
       ;;valeurs
       (val
          ((Lnum)      (Pval $1))
          ((Lid)       (Pid $1))
          ((Lbool)     (Pbool $1)))
       ;;condition if
       (test  
          ((Lif expr Lcol expr Lelse Lcol expr)    (Pcond $2 $4 $7)))
       ;;boucle while
       (while
          ((Lwhile expr Lcol expr)   (Ploop $2 $4)))
       ;;boucle for
       (for
          ((Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr)  (Pfor (Pid $2) (Pval $6) (Pval $8) $11)))
       ;;expréssions singuliéres
       (sexpr
          ((val)                $1)
          ((operation)          $1)
          ((max)                $1)
          ((min)                $1)
          ((nt)                 $1)))
 
    (precs (left Lplus)
           (left Lminus)
           (left Lstar)
           (left Lslash)
           (left Lexpt)
           (left Lsup)
           (left Linf)
           (left Lseq)
           (left Lieq)
           (left Leq)
           (left Lneq)
           (left Lmod)
           (left Land)
           (left Lnot)
           (left Lsll)
           (left Lsrl)
           (left Lor))
    (error
        (lambda (ok? name value)
        (error 'Parser "Error?")))))

(define (prog-parse in)
  (parse (lambda () (prog-lex in))))
