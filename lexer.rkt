;;Ce fichier contient les outils nécessaires pour l'analyse lexicale qui transforme le code en un ensemble de lexèmes aussi dit tokens
#lang racket/base

(require parser-tools/lex
         (prefix-in : parser-tools/lex-sre))

(provide prog-lex operators values names keywords punctuations)

;;keywords est un ensemble de lexèmes vide qui représente les mots clé du langage
(define-empty-tokens keywords
 (Lif Lelse Lprint Lopar Lcpar Lfor Lrange 
  Lcot Lnl Lwhile Ldef Lret Lnil Eof Lin
  Lmax Lmin))

;;punctuations est un ensemble de lexèmes vide qui représente les symboles de ponctuation
(define-empty-tokens punctuations
 (Lcol Lcom Lcomma))

;;operators est un ensemble de lexèmes vide qui représente les symboles d'opérations
(define-empty-tokens operators
  (Lplus Lminus Lstar Lmod Land Lor Lnot Lsll Lsrl 
   Lslash Lsup Linf Lseq Lieq Leq Lneq Lassign Lexpt))

;;names est l'ensemble de lexèmes qui représente les identifiants
(define-tokens names
  (Lid))

;;values est l'ensemble de lexemes qui représente des valeurs
(define-tokens values
  (Lnum Lbool))

;;la fonction prog-lex contient un lexer qui analyse et décompose le code en lexèmes
(define prog-lex
  (lexer
   ((eof)           (token-Eof))
   (whitespace      (prog-lex input-port))
   ("+"             (token-Lplus))
   ("-"             (token-Lminus))
   ("*"             (token-Lstar))
   ("//"            (token-Lslash))
   ("**"            (token-Lexpt))
   (">"             (token-Lsup))
   ("<"             (token-Linf))
   (">="            (token-Lseq))
   ("<="            (token-Lieq))
   ("=="            (token-Leq))
   ("!="            (token-Lneq))
   ("%"             (token-Lmod))
   ("="             (token-Lassign))
   ("<<"            (token-Lsll))
   (">>"            (token-Lsrl))
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
   ("for"           (token-Lfor))
   ("range"         (token-Lrange))
   ("in"            (token-Lin))
   ("max"           (token-Lmax))
   ("min"           (token-Lmin))
   ("#"             (comment-lexer input-port))
   ("\\n"           (prog-lex input-port))
   (bool            (token-Lbool (string=? "True" lexeme)))
   ((:+ alphabetic) (token-Lid (string->symbol lexeme)))
   ((:+ numeric)    (token-Lnum (string->number lexeme)))
   (any-char        (begin
                       (eprintf "Lexer: ~a: unrecognized char.\n" lexeme)  (exit 1)))))

;;cette fonvtion définie les abbreviations True et False
(define-lex-abbrev bool
  (:or "True" "False"))

;;cette fonction sert à ignorer les commentaires 
(define comment-lexer
  (lexer
   ("\n"     (prog-lex input-port))
   (any-char (comment-lexer input-port))))

