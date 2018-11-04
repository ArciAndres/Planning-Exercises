(
    define (problem Wumpus1)
    (:domain WumpusWorld)
    (:objects   sq-1-1 sq-1-2 sq-1-3
                sq-2-1 sq-2-2 sq-2-3
                )
    (:init  (adj sq-1-1 sq-2-1) (adj sq-1-1 sq-1-2)
            (adj sq-1-2 sq-2-2) (adj sq-1-2 sq-1-3) (adj sq-1-2 sq-1-1)
            (adj sq-1-3 sq-2-3) (adj sq-1-3 sq-1-2)
            (adj sq-2-1 sq-1-1) (adj sq-2-1 sq-2-2)
            (adj sq-2-2 sq-1-2) (adj sq-2-2 sq-2-3) (adj sq-2-2 sq-2-1)
            (adj sq-2-3 sq-1-3) (adj sq-2-3 sq-2-2)

            (pit sq-1-2)(gold sq-1-3)(not (hasGold))(wumpus sq-2-3)(at sq-1-1)
    )
    (:goal (hasGold))
)