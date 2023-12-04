"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

Object subclass: Arithmetic [

    Arithmetic>>square: aNumber [
        | output |
        "This method calculates and returns the square of the input number."
        output := aNumber * aNumber.

        ^ output.
    ]


    Arithmetic>>addTwoNumbers: aNumber bNumber: bNumber [
        | output |
        "This method calculates and returns the sum of the numbers."
        output := aNumber + bNumber.

        ^ output.
    ]
]


"Usage:"
| calculator result |
calculator := Arithmetic new. "Use the class object"

result := calculator square: 9.
Transcript show: 'The square of number is ', result asString; nl.

Transcript nl.

result := calculator addTwoNumbers: 100 bNumber: 1.
Transcript show: 'The sum is of the two numbers is ', result asString; nl.
