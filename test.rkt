#lang racket/base

(require racket/match)


(define (mips-data data)
  (printf "\n.data\n")
  (hash-for-each data
     (lambda (k v)
	(if (number? v)
           (printf "~a: .word ~s\n" k v)
           (printf "~a: .asciiz ~s\n" k v)))))

(define (mips-list-data data)
 (cons ("\n.data\n")
    (hash-for-each data
     (lambda (k v)
	(if (number? v)
           (append (list (printf "~a: .word ~s\n" k v)))
            (append (list (printf "~a: .asciiz ~s\n" k v))))))))


(mips-list-data (hash 'nl "\n")) 
