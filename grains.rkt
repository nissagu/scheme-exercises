#lang r5rs

(define (calculate-grains position)

  ; chessboard has 64 positions
  ; position n+1 contains 2*n'th amount of grains
  ; n=1, g=1
  ; n=2, g= 2*1=2
  ; n=3, g=2*2=4
  ; n=4, g=2*4=8
  ; n=5, g=2*8=16
  ; g = 2^n-1

  ; calculate positions at certain positions
  (define (grains-computation result counter max-value)
    (if (> counter max-value)
        result
        (grains-computation (* 2 result)
                            (+ counter 1)
                            max-value)
     )
    )
  
  ; check for allowed position
  (define (valid-position position)
    (if (and (< position 65) (> position 0))
        #t
        #f
     )
    )

  (if (valid-position position)
      ; true branch
       (let ((grains-for-position (grains-computation 1 1 (- position 1)))
       (grains-in-total (grains-computation 1 1 63))
       (position-text "For position: ")
       (total-text " In total: "))
       (string-append position-text (number->string grains-for-position) total-text (number->string grains-in-total)))
       ; false branch
       (display "Invalid input")
   )

 )