#lang r5rs

(define (leap-year year)
  
  (define (leap-year-confirm)
    display "Schaltjahr"
   )

  (define (leap-year-deny)
    display "Kein Schaltjahr"
   )

  ; first condition: year mod 4 = 0
  ; second condition: year mod 100 != 0 or year mod 400 = 0
  ; both must be true
  (define (leap-year? year)
    (and (= (modulo year 4) 0 )
         (or (not (eq? (modulo year 100) 0))
             (= (modulo year 400) 0)
         )
    )
  )

  ; display according to bool value from leap-year?
  (if (leap-year? year)
      (leap-year-confirm)
      (leap-year-deny)
  )
  
)