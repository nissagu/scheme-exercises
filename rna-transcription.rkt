#lang r5rs

(define (rna-complement dna-strand)

  (define (rna-complement-char char)
    (cond ((eq? #\G char) #\C)
          ((eq? #\C char) #\G)
          ((eq? #\T char) #\A)
          ((eq? #\A char) #\U)
          (else #\#)
     )
    )
  
  (list->string (map rna-complement-char (string->list dna-strand)
   ))
 )