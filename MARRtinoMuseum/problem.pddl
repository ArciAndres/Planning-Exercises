(
    define (problem museum1)
    (:domain MARRtinoMuseum)
    (:objects 
        sq-0-0 sq-0-1 sq-0-2 sq-0-3 
        sq-1-0 sq-1-1 sq-1-2 sq-1-3 
    )
    (:init  (adj sq-0-0 sq-1-0) (adj sq-0-0 sq-0-1)
            (adj sq-0-1 sq-0-2) (adj sq-0-1 sq-0-0)
            (adj sq-0-2 sq-0-3) (adj sq-0-2 sq-0-1)
            (adj sq-0-3 sq-1-3) (adj sq-0-3 sq-0-2)
            (adj sq-1-0 sq-0-0) (adj sq-1-0 sq-1-1)
            (adj sq-1-1 sq-1-2) (adj sq-1-1 sq-1-0)
            (adj sq-1-2 sq-1-3) (adj sq-1-2 sq-1-1)
            (adj sq-1-3 sq-0-3) (adj sq-1-3 sq-1-2)

            (at sq-1-0)
            (not (lightsOn))
            (wet sq-0-1)
            (hasSwitch sq-1-1)
            (mustVisit sq-0-0)(mustVisit sq-0-2)(mustVisit sq-1-2)
            
    )
    (:goal (and (not(mustVisit sq-0-0)) (not(mustVisit sq-0-2)) (not(mustVisit sq-1-2)) )
    )
)