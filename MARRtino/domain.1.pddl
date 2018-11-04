(define (domain MARRtino)
    (:requirements :strips)
    (:predicates    (pos ?p)
                    (room ?p)
                    (dirty ?p)
                    (occupied ?p)
                    (at-robot ?p)
                    (adj ?p1 ?p2))

    (:action move
            :parameters (?from ?to)
            :precondition (and (pos ?from)(pos ?to)(adj ?from ?to)
                                (at-robot ?from)(not(room ?to)))
            :effect (and(at-robot ?to)(not(at-robot ?from)))
            )

    (:action enterRoom
            :parameters (?from ?to)
            :precondition (and (pos ?from)(pos ?to)(room ?to)(adj ?from ?to)
                               (not(occupied ?to))(dirty ?to))
            :effect (and (at-robot ?to)(not (at-robot ?from)))
            )
    
    (:action clean
            :parameters (?space)
            :precondition (and(pos ?space)(room ?space)(dirty ?space)(at-robot ?space))
            :effect (not(dirty ?space))
            )
)