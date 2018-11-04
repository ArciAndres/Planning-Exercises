(
    define (domain WumpusWorld)
    (:requirements :strips)
    (:predicates    (at ?pos)
                    (adj ?x ?y)
                    (wumpus ?pos)
                    (gold ?pos)
                    (pit ?pos)
                    (hasGold)
    )
    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from)(not (wumpus ?to))(not (pit ?to))(adj ?from ?to))
        :effect (and (at ?to)(not (at ?from)))
    )
    (:action killWumpus
        :parameters (?from ?wumpusLoc)
        :precondition (and (wumpus ?wumpusLoc)(at ?from)(adj ?from ?wumpusLoc))
        :effect (not (wumpus ?wumpusLoc)))
    
    (:action pickUpGold
        :parameters (?x)
        :precondition (and (gold ?x)(at ?x))
        :effect (hasGold))
)