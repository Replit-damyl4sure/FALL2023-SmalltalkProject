"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"


Object subclass: RandomWalk [

    RandomWalk class >> twoDRandomWalk: max_X max_Y: max_Y [
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

            "Choose a random direction: 1 (up), 2 (down), 3 (left), or 4 (right)"
            direction := (1 to: 4) atRandom.

            "Update coordinates based on the chosen direction, limiting the maximum value"
            (direction = 1) ifTrue: [x := x + 1].
            (direction = 2) ifTrue: [y := y + 1].
            (direction = 3) ifTrue: [x := x - 1].
            (direction = 4) ifTrue: [y := y - 1].

            count := count + 1.
        ].

        Transcript show: 'Number of movements: ', count asString; flush; nl; nl.
        ^ 'Exit the Grid at position: (', x asString, ', ', y asString, ')'.
    ]

]

"Example usage:"
| result |
Transcript show: 'Enter a maximum X_grid boundary: '; flush.
X_boundary := (FileStream stdin nextLine) asInteger.

Transcript show: 'Enter a maximum Y_grid boundary: '; flush.
Y_boundary := (FileStream stdin nextLine) asInteger.

result := (RandomWalk twoDRandomWalk: X_boundary max_Y: Y_boundary).
Transcript show: result; flush; nl.
