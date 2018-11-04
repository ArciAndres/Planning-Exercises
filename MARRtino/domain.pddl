(define (domain MARRtino)
    (:requirements :strips)
    (:predicates     (room ?p)
                    (dirty ?p)
                    (occupied ?p)
                    (at-robot ?p)
                    (adj ?p1 ?p2))

    (:action move
            :parameters (?from ?to)
            :precondition (and (adj ?from ?to)
                                (at-robot ?from)(not(room ?to)))
            :effect (and(at-robot ?to)(not(at-robot ?from)))
            )

    (:action enterRoom
            :parameters (?from ?to)
            :precondition (and (room ?to)(adj ?from ?to)(at-robot ?from)
                               (not(occupied ?to))(dirty ?to))
            :effect (and (at-robot ?to)(not (at-robot ?from)))
            )
    
    (:action clean
            :parameters (?space)
            :precondition (and(room ?space)(dirty ?space)(at-robot ?space))
            :effect (not(dirty ?space))
            )
)