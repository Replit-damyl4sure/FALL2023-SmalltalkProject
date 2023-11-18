"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

Object subclass: ClassPackage [

    ClassPackage>>square: aNumber [
        | output |
        "This method calculates and returns the square of the input number."
        output := aNumber * aNumber.

        ^ output.
    ]


    ClassPackage>>addTwoNumbers: aNumber bNumber: bNumber [
        | output |
        "This method calculates and returns the sum of the numbers."
        output := aNumber + bNumber.

        ^ output.
    ]
]


"Usage:"
| calculator result |
calculator := ClassPackage new. "Use the class object"

result := calculator square: 5.
Transcript show: 'The square of 5 is ', result asString; nl.

Transcript nl.

result := calculator addTwoNumbers: 5 bNumber: 10.
Transcript show: 'The sum is ', result asString; nl.
