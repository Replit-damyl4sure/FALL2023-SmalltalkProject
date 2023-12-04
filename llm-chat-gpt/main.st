"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

Object subclass: PrimeNumberFinder [

    PrimeNumberFinder class >> isPrime: aNumber [
        "Check if a given number is prime"
        | limit |
        aNumber < 2 ifTrue: [^ false].

        limit := (aNumber sqrt) floor.
        (2 to: limit) do: [ :i |
            (aNumber \\ i) = 0 ifTrue: [^ false].
        ].

        ^ true.
    ]

    PrimeNumberFinder class >> displayPrimesLessThan: n [
        "Display all prime numbers less than the input number n"
        | primes |
        primes := (2 to: n - 1) select: [ :i | (self isPrime: i)].

        n = 1
            ifTrue: [Transcript show: 'NO PRIMES']
            ifFalse: [Transcript show: 'Prime numbers less than ', n printString, ' are: ', primes printString].

        Transcript nl.
    ]

]

"Get input from the user"
| userInput |
Transcript show: 'Enter input integer number: '; nl.
userInput := (FileStream stdin nextLine) asInteger.

"Display prime numbers less than the input"
PrimeNumberFinder displayPrimesLessThan: userInput.
