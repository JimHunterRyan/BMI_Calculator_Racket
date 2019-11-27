;;; Sample Data in the form ("Name" Height Weight)

;;; height in meters, weight in kg,



(define sample '(("Michael" 1.73 70) ("Gob" 1.80 90) ("Tobias" 1.65 67) ("George" 1.75 70) ("Buster" 1.77 81) ("Barry" 1.63 85) ))

;;; Average BMIfunction that takes two arguments
;;;gives bmi category

(define bmi (lambda (x y)(/ y (* x x))))



;;; Show result for a person

(define showResult

(lambda (x y z)

(display x )

(display ": " )

(display y )

(display " meters " )

(display z )

(display "Kg " )

(if (>= (bmi y z) 30)

(display ". Obese.\n")
(if (>= (bmi y z) 25)
(display ". Overweight.\n")
(if (>= (bmi y z) 18.5)
(display ". Healthy.\n")
(display ". Underweight.\n")))

)))







;;; Apply the showResult function to a single student

(define process (lambda (args) (apply showResult args)))

;;; Map our main processing function to all students. We use a define to suppress the output

(define a (map process sample))
