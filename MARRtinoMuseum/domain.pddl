(
    define (domain MARRtinoMuseum)
    (:requirements :strips)
    (:predicates    (at ?pos)
                    (adj ?pos1 ?pos2)
                    (mustVisit ?pos)
                    (wet ?pos)
                    (hasSwitch ?s)
                    (lightsOn))
    
    (:action move 
        :parameters (?from ?to)
        :precondition (and(at ?from)(not (wet ?to))(adj ?from ?to))
        :effect (and(at ?to)(not (at ?from)))
    )

    (:action visitGuests
        :parameters (?pos)
        :precondition (and (mustVisit ?pos)(at ?pos)(lightsOn))
        :effect (not (mustVisit ?pos))
    )

    (:action turnLightsOn 
        :parameters (?pos)
        :precondition (and (at ?pos)(not (lightsOn))(hasSwitch ?pos))
        :effect (lightsOn)
    )
)