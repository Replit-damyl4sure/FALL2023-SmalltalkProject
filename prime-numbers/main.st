"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"


"Declare variables"
| num prime isPrime i j |

"Read in a line of input from the standard user"
Transcript show: 'Enter a number: '; flush.

"Input is regarded as a string and converted to an Integer and stored in a variable"
num := (FileStream stdin nextLine) asInteger.

"Check if input num is NEGATIVE"
(num <= 1) ifTrue: [
    Transcript show: 'Please enter a positive integer!'; cr.

] ifFalse: [
    prime := OrderedCollection new. "This line initializes an empty ordered collection that will be used to store prime numbers found in the subsequent loop"

    (2 to: num) do: [:i |
        isPrime := true. "Assume the number is prime until proven otherwise"
        (2 to: (i sqrt asInteger)) do: [:j |
            (i \\ j) = 0 ifTrue: [isPrime := false. "i is divisible by j, so it's not prime"].
        ].
        isPrime ifTrue: [prime add: i].
    ].

    Transcript show: 'Prime numbers from zero to input number ', num asString, ' are: '; cr.

    prime do: [:each | Transcript show: each asString, ' '; flush.]. "This line iterates through the prime collection, converts each prime number to a string, displays it in the Transcript"
    Transcript cr.
].
