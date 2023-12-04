"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"


Object subclass: RandomWalk [

    RandomWalk class >> createArray [
        | A pL pR pU pD |

        "Declare an empty list"
        A := OrderedCollection new.

        "Read input"
        Transcript show: 'Enter an integer or decimal value for pL: '; flush.
        pL := (FileStream stdin nextLine) asNumber.

        Transcript show: 'Enter an integer or decimal value for pR: '; flush.
        pR := (FileStream stdin nextLine) asNumber.
        pR := pR + pL.

        Transcript show: 'Enter an integer or decimal value for pU: '; flush.
        pU := (FileStream stdin nextLine) asNumber.
        pU := pU + pR.

        Transcript show: 'Enter an integer or decimal value for pD: '; flush.
        pD := (FileStream stdin nextLine) asNumber.
        pD := pU + pD.

        "Append H values to the empty array"
        A add: pL.
        A add: pR.
        A add: pU.
        A add: pD.

       ^ A.
    ]

    RandomWalk class >> determineDirection: A [
        | randomNumber |

        "Choose a random value between 1 and the last element of array A"
        randomNumber := (0 to: (A at: 4)) atRandom.
        ^ randomNumber.
    ]

    RandomWalk class >> twoDRandomWalk: A max_X: max_X max_Y: max_Y [
        | x y count direction |

        "Starting position at the origin"
        Transcript show: 'Enter starting point for x_axis: '; flush.
        x := (FileStream stdin nextLine) asInteger.
        Transcript show: 'Enter starting point for y_axis: '; flush.
        y := (FileStream stdin nextLine) asInteger.


        "Check if starting point is negative"
        (x < 0) ifTrue: [x := 0].
        (y < 0) ifTrue: [y := 0].


        Transcript nl; show: 'Starting point (', x asString, ', ', y asString, ')'; flush; nl.

        count := 0.
        [((x < max_X) and: [y < max_Y]) and: [(x > 0) or: [y > 0]]] whileTrue: [

            ((x < 0) or: [y < 0]) ifTrue: [
                Transcript show: 'Number of movements: ', count asString; flush; nl; nl.
                ^ 'Exit Grid at position: (', x asString, ', ', y asString, ')'.
            ].

            "Update coordinates based on the chosen direction, limiting the maximum value"
            direction := self determineDirection: A.
            (direction <= (A at: 1)) ifTrue: [x := x - 1].
            (direction > (A at: 1) and: [direction <= (A at: 2)]) ifTrue: [x := x + 1].
            (direction > (A at: 2) and: [direction <= (A at: 3)]) ifTrue: [y := y + 1].
            (direction > (A at: 3)) ifTrue: [y := y - 1].

            count := count + 1.
        ].

        Transcript show: 'Number of movements: ', count asString; flush; nl; nl.
        ^ 'Exit the Grid at position: (', x asString, ', ', y asString, ')'.
    ]

]




"Example usage:"

| A |

"Create the array using a function"
A := RandomWalk createArray.


"Use the twoDRandomWalk function"
| result |

((A at: 4) = 100 or: [(A at: 4) = 1.0]) ifTrue: [
    Transcript show: 'Enter a maximum X_grid boundary: '; flush.
    X_boundary := (FileStream stdin nextLine) asInteger.

    Transcript show: 'Enter a maximum Y_grid boundary: '; flush.
    Y_boundary := (FileStream stdin nextLine) asInteger.

    result := (RandomWalk twoDRandomWalk: A max_X: X_boundary max_Y: Y_boundary).
    Transcript show: result; flush; nl.

    ] ifFalse: [
        Transcript nl; show: 'condition not met: Total sum of probability is not 100 or 1.0'; nl.
         Smalltalk quit: 0. "Exit the Smalltalk environment"

        ].
