;; veuillez mettre la tabulation à 2 si ce n'est pas fait car les lignes risque de se decaler;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#lang racket/base

(require racket/match)

(require "ast.rkt" "lexer.rkt" "parser.rkt")

(provide mips-emit mips-data mips-compile prog-eval)

(define (prog-eval prog env)
  (write prog)
  (match prog
    (expr expr)    (mips-compile prog env))
    ;;((list expr)  (mips-compile prog env))
    ((list expr1 exprs)  (mips-compile (list expr1) env) (prog-eval (mips-compile (list exprs) env) env)))

;;compiler les expressions et les opérations
(define (comp prog env fp-sp) 
  (match prog
     ((Pval v)               v)
     ((Pid name)             name)
     ((Pdef id expr)         (hash-set env id (comp expr env fp-sp))) ;; declaration de variables
     ((Pcond test yes no)    (hash-set env (comp test env fp-sp) (comp yes env fp-sp) (comp no env fp-sp)))
     ((Pcondthen test yes)   (hash-set env (comp test env fp-sp) (comp yes env fp-sp) ))
     ((Pprint expr)          (hash-set env (comp expr env fp-sp)))
     ((Pop op v1 v2)         (match op
                                ('add (+  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('sub (-  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('mul (*  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('div (/  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('sup (>  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('inf (<  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('seq (>= (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('ieq (<= (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('eq  (=  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('neq (=  (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('mod (modulo (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('and (and (comp v1 env fp-sp) (comp v2 env fp-sp)))
                                ('or  (or (comp v1 env fp-sp) (comp v2 env fp-sp)))))))
       
;;"matcher" les instructions mips
(define (mips-emit instr)
  (match instr
    ((Move rd rs)   (printf "move $~a, $~a\n" rd rs))
    ((Li r i)       (printf "li $~a, ~a\n" r i))
    ((La r a)       (printf "la $~a, ~a\n" r (mips-loc a)))
    ((Addi rd rs i) (printf "addi $~a, $~a, ~a\n" rd rs i))
    ((Add rd rs r)  (printf "add $~a, $~a, $~a\n" rd rs r))
    ((Sub rd rs i)  (printf "sub $~a, $~a, ~a\n" rd rs i))
    ((Mult r1 r2)   (printf "mult $~a, $~a\n" r1 r2))
    ((Div r1 r2)    (printf "div $~a, $~a\n" r1 r2))
    ((Mflo rs)      (printf "mflo $~a\n" rs))
    ((Mfhi rs)      (printf "mfhi $~a\n" rs))
    ((Sw r loc)     (printf "sw $~a, ~a\n" r (mips-loc loc)))
    ((Lw r loc)     (printf "lw $~a, ~a\n" r (mips-loc loc)))
    ((Syscall)      (printf "syscall\n"))
    ((Jr r)         (printf "jr $~a\n" r))
    ((Beq r1 r2 lbl)(printf "beq $~a, $~a, ~a\n" r1 r2 lbl))
    ((Bgt r1 r2 lbl)(printf "bgt $~a, $~a, ~a\n" r1 r2 lbl))
    ((Blt r1 r2 lbl)(printf "blt $~a, $~a, ~a\n" r1 r2 lbl))
    ((Bge r1 r2 lbl)(printf "bge $~a, $~a, ~a\n" r1 r2 lbl))
    ((Ble r1 r2 lbl)(printf "ble $~a, $~a, ~a\n" r1 r2 lbl))
    ((And rd r1 r2) (printf "and $~a, $~a, $~a\n"rd r1 r2))
    ((Or rd r1 r2)  (printf "or $~a, $~a, $~a\n"rd r1 r2))
    ((B lbl)        (printf "b ~a\n" lbl))
    ((Label l)      (printf "~a:\n" l))))

;;match les labels est les emplacement dans la pile
(define (mips-loc loc)
  (match loc
    ((Lbl l)   (format "~a" l))
    ((Mem b r) (format "~a($~a)" b r))))

;;cette fonction sert à charger des mots dans un .data
(define (mips-data data)
  (printf "\n.data\n")
  (hash-for-each data
     (lambda (k v)
	     (if (number? v)
           (printf "~a: .word ~s\n" k v)
           (printf "~a: .asciiz ~s\n" k v)))))

;;cette fonction affiche les informations nécessaire pour le programme spim
(define (main)
  (printf ".text\n.globl main\nmain:\n"))

;;la fonction print-data sert à charger la chaîne de caractére mise dans le print dans le .data
(define (print-data data)
  (printf "\n.data\n")
  (hash-for-each data
    (lambda (k v)
      (printf "~a: .asciiz \"~s\"\n" k v))))

;;ces deux fonctions sont utilisé pour les instructions de if
(define (mips-beq)   (printf "beq $v0, $0, Else\n"))
(define (mips-label) (printf "b Endif\nElse:\n"))
 
;;la fonction mips-if-compile match les programme que peut contenir un if
(define (mips-if-compile prog env)
 (for-each mips-emit 
  (append
   (match prog
     ;;un numero
     ((list (Pval v))      (append  (list (Li 'v0 v))))
     ;;déclaration de variable
     ((Pdef id v)          (append (list (Lw 't0 (Lbl 'val)))))
     ;;print
     ((list (Pprint expr)) (append (list (Li 'v0 4))
                                   (list (La 'a0 (Lbl 'e)))
                                   (list (Syscall)))))))) 

;;afficher les .data qui correspond au instructions du programme
(define (match-data prog env)
 (append 
    (match prog
      ((list (Pval v))        '())
      ((list (Pid n))         (list (mips-data (make-hash '((n . "\nNameError: the entered name is not defined\n"))))))
      ((list (Pdef id v))     (list (mips-data (hash 'val (comp v env 0)))))
      ((list (Pop op v1 v2))  (list (mips-data (make-hash '((f . "\nFalse\n") (t . "\nTrue\n"))))))
      ((list (Pprint expr))   (print-data (hash 'e (comp expr env 0)))))))

;;traduction des expressions en instructions mips
(define (mips-compile prog env)
(mips-data (make-hash '((nl . "\n"))))
 (for-each mips-emit 
   (append
    (match prog
      ((list expr1 expr2) (list (mips-compile (list expr1) env)) (list (mips-compile (list expr2) env))
       (append (list (Li 't9 0))))
      ;; le code entré peut être un numero qui sera affiché aprés la compilation
      ((list (Pval v)) 
        (list (match-data prog env))
        (list (main))   
        (append  (list (Li 'v0 1))
                 (list (La 'a0 (Lbl v)))
                 (list (Syscall)))) 
               
      ;; ou un mot/lettre mais cela envoie un message d'erreur car le mot entré n'est pas identifié
      ((list (Pid n))
        (list (match-data prog env)) 
        (list (main))    
        (append (list (Li 'v0 4))
                (list (La 'a0 (Lbl 'n)))
                (list (Syscall))))              
        	

      ;; definition de varaibles
      ((Pdef id v) 
        (list (match-data (list prog) env));; pour afficher définir l'id dans le .data
        (list (main)) ;;pour afficher les autres information .txt .globl main main:
        (append (list (Lw 't0 (Lbl 'val)))))               
          

      ;; if condition yes no
      ((list (Pcond test yes no)) 
        (match-data (list test) env)
        (match-data (list yes) env)
        (match-data (list no) env)
        (main)                 
        (mips-if-compile (list test) env)
        (mips-beq)
        (mips-if-compile (list yes) env)
        (mips-label)
        (mips-if-compile (list no) env)
        (list (Label 'Endif)) )
          
    
      ;; if condition yes 
      ((list (Pcondthen test yes)) 
        (match-data (list test) env)
        (match-data (list yes) env) 
        (main)                   
        (mips-if-compile (list test) env)
        (mips-beq)
        (mips-if-compile (list yes) env)
        (list (B 'Endif)))          
         
      ;;print('expr')
      ((list (Pprint expr))
        (match-data (list expr) env)
        (main)
        (append (list (Li 'v0 4))
                (list (La 'a0 (Lbl 'e)))
                (list (Syscall))))
        

      ;; ou bien des operations                              
	    ((list (Pop op v1 v2))
        (match-data prog env)
        (main)
        (match op 
          ('add (append (list (Li 't0 (comp v1 env 0)))
		                    (list (Addi 't0 't0 (comp v2 env 0)))
				                (list (Li 'v0 1))
				                (list (Move 'a0 't0))						         
                        (list (Syscall))))
          ('sub (append (list (Li 't0 (comp v1 env 0)))
					              (list (Sub 't0 't0 (comp v2 env 0)))
				                (list (Li 'v0 1))
				                (list (Move 'a0 't0))
										    (list (Syscall))))
					('mul (append (list (Li 't0 (comp v1 env 0)))
											  (list (Li 't1 (comp v2 env 0)))
												(list (Mult 't0 't1))
												(list (Mflo 's0))
                        (list (Li 'v0 1))
										    (list (Add 'a0 'zero 's0))
		                    (list (Syscall))))
				  ('div (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Div 't0 't1))
												(list (Mflo 's0))
                        (list (Li 'v0 1))
												(list (Add 'a0 'zero 's0))
		                    (list (Syscall))))
					('sup (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Bgt 't0 't1 'TRUE))
												(list (B 'FALSE))
												(list (Label 'TRUE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 't)))
                        (list (Syscall))
												(list (B 'next))
                        (list (Label 'FALSE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 'f)))
                        (list (Syscall))
                        (list (Label 'next))))
          ('inf (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Blt 't0 't1 'TRUE))
												(list (B 'FALSE))
												(list (Label 'TRUE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 't)))
                        (list (Syscall))
												(list (B 'next))
                        (list (Label 'FALSE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 'f)))
                        (list (Syscall))
                        (list (Label 'next))))
          ('seq (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Bge 't0 't1 'TRUE))
												(list (B 'FALSE))
												(list (Label 'TRUE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 't)))
                        (list (Syscall))
												(list (B 'next))
                        (list (Label 'FALSE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 'f)))
                        (list (Syscall))
                        (list (Label 'next))))
					('ieq (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Ble 't0 't1 'TRUE))
												(list (B 'FALSE))
												(list (Label 'TRUE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 't)))
                        (list (Syscall))
											  (list (B 'next))
                        (list (Label 'FALSE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 'f)))
                        (list (Syscall))
                        (list (Label 'next))))
          ('eq  (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Beq 't0 't1 'TRUE))
												(list (B 'FALSE))
												(list (Label 'TRUE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 't)))
                        (list (Syscall))
												(list (B 'next))
                        (list (Label 'FALSE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 'f)))
                        (list (Syscall))
                        (list (Label 'next))))
          ('neq (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
											  (list (Beq 't0 't1 'FALSE))
												(list (B 'TRUE))
												(list (Label 'FALSE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 'f)))
                        (list (Syscall))
												(list (B 'next))
                        (list (Label 'TRUE))
                        (list (Li 'v0 4))
                        (list (La 'a0 (Lbl 't)))
                        (list (Syscall))
                        (list (Label 'next))))
          ('mod (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
												(list (Div 't0 't1))
												(list (Mfhi 's0))
                        (list (Li 'v0 1))
												(list (Add 'a0 'zero 's0))
		                    (list (Syscall))))
          ('and (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
                        (list (And 't2 't0 't1))
                        (list (Li 'v0 1))
                        (list (Move 'a0 't2))
												(list (Syscall))))
          ('or  (append (list (Li 't0 (comp v1 env 0)))
												(list (Li 't1 (comp v2 env 0)))
                        (list (Or 't2 't0 't1))
                        (list (Li 'v0 1))
                        (list (Move 'a0 't2))
												(list (Syscall)))))) )
    ;;Ce bloc est présent dans tous les programmes spim traduit, il sart à faire un saut de ligne et à quitter le programme                               
	  (list  (Li 'v0 4)																				 
          (La 'a0 (Lbl 'nl))
          (Syscall)
          (Li 'v0 0)
          (Jr 'ra)))))
