;; im using a predicate fnuction to check if a number is positive
(define (positive? x)
  (> x 0))  ; return #t if x is greater than 0
;;#f otherwise

;; recursion to count + numbers in a list
(define (count-positive lst)
  (if (null? lst)  ; if null -> 0
      0
      (+ (if (positive? (car lst)) 1 0)  ; see if the first element is +
         (count-positive (cdr lst)))))  ; recuur with the rest of the list



;; test  1: list with both + and - numbers
(define test1 '(1 -2 3 4))
(display "Test 1: ")
(display (count-positive test1))  ;; exp output: 3 cz 1, 3, and 4 are +
(newline)

;; test 2: list with all - numbers
(define test2 '(-1 -2 -3))
(display "Test 2: ")
(display (count-positive test2))  ;; exp output: 0 cz no + numbers
(newline)

;; test 3: list with all + numbers
(define test3 '(1 2 3 4))
(display "Test 3: ")
(display (count-positive test3))  ;; exp output: 4 since all numbers are +
(newline)

;; test 4: null list
(define test4 '())
(display "Test 4: ")
(display (count-positive test4))  ;; exp output: 0 cz null list
(newline)
