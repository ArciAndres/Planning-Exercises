(define (problem RobotHotel1)
    (:domain MARRTino)
    (:objects   sq-1-1 sq-1-2 sq-1-3
                sq-2-1 sq-2-2 sq-2-3
                sq-3-1 sq-3-2 sq-3-3
                sq-4-1 sq-4-2 sq-4-3)
    (:init  (pos sq-1-1) (pos sq-1-2) (pos sq-1-3)
            (pos sq-2-1) (pos sq-2-2) (pos sq-2-3)
            (pos sq-3-1) (pos sq-3-2) (pos sq-3-3)
            (pos sq-4-1) (pos sq-4-2) (pos sq-4-3)
            
            (room sq-1-1) (room sq-1-2) (room sq-1-3)
            (room sq-4-1) (room sq-4-2) (room sq-4-3)
            
            (adj sq-1-1 sq-2-1) (adj sq-1-1 sq-1-2)
            (adj sq-1-2 sq-2-2) (adj sq-1-2 sq-1-3) (adj sq-1-2 sq-1-1)
            (adj sq-1-3 sq-2-3) (adj sq-1-3 sq-1-2)
            (adj sq-2-1 sq-3-1) (adj sq-2-1 sq-1-1) (adj sq-2-1 sq-2-2)
            (adj sq-2-2 sq-3-2) (adj sq-2-2 sq-1-2) (adj sq-2-2 sq-2-3) (adj sq-2-2 sq-2-1)
            (adj sq-2-3 sq-3-3) (adj sq-2-3 sq-1-3) (adj sq-2-3 sq-2-2)
            (adj sq-3-1 sq-4-1) (adj sq-3-1 sq-2-1) (adj sq-3-1 sq-3-2)
            (adj sq-3-2 sq-4-2) (adj sq-3-2 sq-2-2) (adj sq-3-2 sq-3-3) (adj sq-3-2 sq-3-1)
            (adj sq-3-3 sq-4-3) (adj sq-3-3 sq-2-3) (adj sq-3-3 sq-3-2)
            (adj sq-4-1 sq-3-1) (adj sq-4-1 sq-4-2)
            (adj sq-4-2 sq-3-2) (adj sq-4-2 sq-4-3) (adj sq-4-2 sq-4-1)
            (adj sq-4-3 sq-3-3) (adj sq-4-3 sq-4-2)

            (at-robot sq-2-1)
            
            (occupied sq-1-1) (occupied sq-1-3)
            (occupied sq-4-1) (occupied sq-4-2)

            (dirty sq-1-2) 
            (dirty sq-4-1) (dirty sq-4-3)
    )
    (:goal (and (not(dirty sq-1-2)) (not(dirty sq-4-1)) (not(dirty sq-4-3)))
    )
)