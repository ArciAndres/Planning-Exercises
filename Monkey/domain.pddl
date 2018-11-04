(
    define (domain MonkeyForBananas)
    (:requirements :strips)
    (:predicates    (pos ?p)
                    (bananas ?b)
                    (box ?bx)
                    (monkey ?m)
                    (scissors ?sci)
                    (table ?t)
                    (at ?obj ?pos)
                    (on ?obj ?obj)
                    (has ?obj ?obj))
    (:action move
        :parameters (?from ?to ?m ?t ?bx)
        :precondition (and  (table ?t)(box ?bx)(monkey ?m)
                            (at ?m ?from)(not (on ?m ?t))(not (on ?m ?bx)))
        :effect (and(at ?m ?to)(not(at ?m ?from))))
        
    (:action push
        :parameters (?bx ?m ?from ?to)
        :precondition (and (at ?bx ?from)(at ?m ?from)(monkey ?m)(box ?bx)(not (on ?m ?bx)))
        :effect (and(at ?bx ?to)(at ?m ?to)(not (at ?bx ?from))(not (at ?m ?from))))

    (:action getScissors
        :parameters (?m ?sci ?table)
        :precondition (and (on ?m ?table)(on ?sci ?table)(monkey ?m)(scissors ?sci))
        :effect (and (has ?m ?sci)(not (on ?sci ?table))))

    (:action getBananas
        :parameters (?m ?b ?bx ?sci ?p)
        :precondition (and  (on ?m ?bx)(has ?m ?sci)(at ?bx ?p)(at ?m ?p)(at ?m ?b)
                            (scissors ?sci)(monkey ?m)(box ?bx)(bananas ?b))
        :effect (and (has ?m ?b)))

    (:action climbUp
        :parameters (?m ?obj ?pos)
        :precondition (and (monkey ?m)(at ?m ?pos)(at ?obj ?pos)(not (on ?m ?obj)))
        :effect (and(on ?m ?obj)))

    (:action climbDown
        :parameters (?m ?obj ?pos)
        :precondition (and (monkey ?m)(at ?m ?pos)(at ?obj ?pos)(on ?m ?obj))
        :effect (and(not(on ?m ?obj))))
)