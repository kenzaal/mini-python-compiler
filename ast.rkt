#lang racket/base

(provide (all-defined-out))

(struct Pval (val) #:transparent)
(struct Pop (op v1 v2) #:transparent)
(struct Pid (name) #:transparent)
(struct Pdef (id expr) #:transparent)

;;;;; MIPS
(struct Move (rd rs))
(struct Li (r i))
(struct La (r a))
(struct Addi (rd rs i))
(struct Add (rd rs r))
(struct Sub (rd rs i))
(struct Mult (r1 r2))
(struct Div (r1 r2))
(struct Mflo (r))
(struct Mfhi (r))
(struct Sw (r loc))
(struct Lw (r loc))
(struct Syscall ())
(struct Jr (r))
(struct Beq (r1 r2 lbl))
(struct Bgt (r1 r2 lbl))
(struct Blt (r1 r2 lbl))
(struct Bge (r1 r2 lbl))
(struct Ble (r1 r2 lbl))
(struct B (lbl))
(struct Label (l))

;; addresses
(struct Lbl (l))   ;; label (souvent présent dans .data)
(struct Mem (b r)) ;; emplacement mémoire à l'adresse b + valeur du registre r

