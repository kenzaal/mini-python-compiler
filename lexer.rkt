#lang racket/base

(require parser-tools/lex
         (prefix-in : parser-tools/lex-sre))

(provide calc-lex operators values names keywords punctuations)

(define-empty-tokens keywords
 (Lif Lelse Lprint Lopar Lcpar Lcot Lnl Lwhile Ldef Lret Lnil Eof))

(define-empty-tokens punctuations
 (Lcol Lcom Lcomma))
 
(define-empty-tokens operators
  (Lplus Lminus Lstar Lmod Land Lor Lnot 
   Lslash Lsup Linf Lseq Lieq Leq Lneq Lassign))

(define-tokens names
  (Lid))

(define-tokens values
  (Lnum Lbool))

(define calc-lex
  (lexer
   ((eof)           (token-Eof))
   (whitespace      (calc-lex input-port))
   ("+"             (token-Lplus))
   ("-"             (token-Lminus))
   ("*"             (token-Lstar))
   ("//"            (token-Lslash))
   (">"             (token-Lsup))
   ("<"             (token-Linf))
   (">="            (token-Lseq))
   ("<="            (token-Lieq))
   ("=="            (token-Leq))
   ("!="            (token-Lneq))
   ("%"             (token-Lmod))
   ("="             (token-Lassign))
   ("if"            (token-Lif))
   ("while"         (token-Lwhile))
   (":"             (token-Lcol))
   ("else"          (token-Lelse))
   ("print"         (token-Lprint))
   ("def"           (token-Ldef))
   ("return"        (token-Lret))
   ("("             (token-Lopar))
   (")"             (token-Lcpar))
   ("'"             (token-Lcot))
   ("\n"            (token-Lnl))
   ("()"            (token-Lnil))
   ("and"           (token-Land))
   ("or"            (token-Lor))
   (","             (token-Lcomma))
   ("not"           (token-Lnot))
   ("#"             (comment-lexer input-port))
   ("\\n"           (calc-lex input-port))
   (bool            (token-Lbool (string=? "True" lexeme)))
   ((:+ alphabetic) (token-Lid (string->symbol lexeme)))
   ((:+ numeric)    (token-Lnum (string->number lexeme)))))


(define-lex-abbrev bool
  (:or "True" "False"))

(define comment-lexer
  (lexer
   ("\n"     (calc-lex input-port))
   (any-char (comment-lexer input-port))))

