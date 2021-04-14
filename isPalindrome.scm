;this method determines if the inmput is a palindrome or not
(define (ispalindrome my-input)
  (if (null? my-input)      ;my-input is the input    
      #t                    
      (let ((first-element (car my-input)) ;reads first element
            (last-element (car (reverse my-input))))  
        (and (equal? first-element
                     (if (list? last-element)
                         (reverse last-element)
                         last-element))
             (ispalindrome (get-middle my-input)))))) ;starts with middle and works its way out to see if all elements x spaces away from middle on each side are the same

;this method finds the middle element
; 
(define (get-middle my-input)
  (if (null? (cdr my-input)) ;if the tail is null 
      '() ;in the base case there are no elements beyond the head element
      (reverse (cdr (reverse (cdr my-input))))))   ;keep reversing from the tail of that element until you get to the middle
  
  ;this method reverses the order of elements
  (define (reverse n)
  (define (iter a b)
    (if (null? a) b
        (iter (cdr a) (cons (car a) b))))   ;cdr reads rest of list
                                            ;car reads head of the list only (1st element)
  (iter n null))
  
  
;first two should be true, last two should be false 
(display (ispalindrome '((a b) c (b a))))
(display "\n")
(display (ispalindrome '((a) b (a))))
(display "\n")
(display (ispalindrome '((b) b (a))))
(display "\n")
(display (ispalindrome '((a) b)))
(display "\n")
