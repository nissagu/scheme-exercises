#lang r5rs

(define (hamming-distance strand-1 strand-2)

  (define (compute-hamming-distance list-1 list-2 differences)
    ; only necessary to check one of the lists since both have the same length
    (if (null? list-1)
        differences
        (if (not (eq? (car list-1) (car list-2)))
            (compute-hamming-distance (cdr list-1) (cdr list-2) (+ 1 differences))
            (compute-hamming-distance (cdr list-1) (cdr list-2) differences)
         )
     )
    )

  ; check for equal length and given, compute the distance
  (if (eq? (string-length strand-1) (string-length strand-2) )
       (compute-hamming-distance (string->list strand-1) (string->list strand-2) 0)
       (display "Different length, not computable.")
      )
 )