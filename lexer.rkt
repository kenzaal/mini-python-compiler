#lang racket/base

(require parser-tools/lex
         (prefix-in : parser-tools/lex-sre))

(provide calc-lex operators values names)

(define-empty-tokens operators
  (Eof Lplus Lminus Lstar Lmod
   Lslash Lsup Linf Lseq Lieq Leq Lneq Lassign))

(define-tokens names
  (Lid))

(define-tokens values
  (Lnum))

(define calc-lex
  (lexer
   ((eof)           (token-Eof))
   (whitespace      (calc-lex input-port))
   ("+"   (token-Lplus))
   ("-"   (token-Lminus))
   ("*"   (token-Lstar))
   ("/"   (token-Lslash))
   (">"   (token-Lsup))
   ("<"   (token-Linf))
   (">="  (token-Lseq))
   ("<="  (token-Lieq))
   ("=="  (token-Leq))
   ("!="  (token-Lneq))
   ("%"   (token-Lmod))
   ("="   (token-Lassign))
   ((:+ alphabetic) (token-Lid (string->symbol lexeme)))
   ((:+ numeric) (token-Lnum (string->number lexeme)))))

