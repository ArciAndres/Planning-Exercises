(define (domain WolfSheepCabbage)
    (:requirements :strips)
    (:predicates(wolf ?w)
                 (sheep ?sh)
                 (cabbage ?c)
                 (side ?side)
                 (man ?m)
                 (at ?obj ?side))

    (:action carryWolf
        :parameters( ?w ?sh ?c ?from ?to ?m)
        :precondition (and (wolf ?w)(sheep ?sh)(cabbage ?c)(side ?from)(side ?to)(man ?m)
                            (not (and (at ?sh ?from)(at ?c ?from)))(at ?w ?from)(at ?m ?from))
                            
        :effect (and (at ?w ?to)(at ?m ?to)(not(at ?m ?from))(not(at ?w ?from)))
    )

    (:action carrySheep
        :parameters (?sh ?from ?to ?m)
        :precondition (and (sheep ?sh)(side ?from)(side ?to)(man ?m)
                            (at ?sh ?from)(at ?m ?from))
        :effect (and(at ?sh ?to)(at ?m ?to)(not(at ?m ?from))(not(at ?sh ?from)))
    )
    
    (:action carryCabbage
        :parameters( ?w ?sh ?c ?from ?to ?m)
        :precondition (and (wolf ?w)(sheep ?sh)(cabbage ?c)(side ?from)(side ?to)(man ?m)
                            (not (or (at ?sh ?from)(at ?w ?from)))(at ?c ?from)(at ?m ?from))
                            
        :effect (and (at ?c ?to)(at ?m ?to)(not(at ?m ?from))(not(at ?c ?from)))
    )

    (:action carryNothing
        :parameters (?from ?to ?m ?sh ?c ?w)
        :precondition (and (side ?from)(side ?to)(man ?m)(sheep ?sh)(wolf ?w)(cabbage ?c)
                            (at ?m ?from)
                            (not(and (at ?sh ?from)(at ?c ?from)))
                            (not(and (at ?sh ?from)(at ?w ?from)))
                            )
        :effect (and(at ?m ?to)(not(at ?m ?from)))
    )
)