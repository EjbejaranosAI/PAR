(define (domain CleanerRobotTask2)
        (:requirements :typing :strips)
        (:predicates
            
            (robot-in ?x) 
            (box-in ?box ?x) 
            (is-clean ?x) 
            (is-dirty ?x)
            (adj ?x ?y)          
            (is-empty ?x)                                 
        )

    (:action move_to_office
        :parameters (?x ?y)
        :precondition (and
                            (robot-in ?x) 
                            (or
                            (adj ?x ?y)
                            (adj ?y ?x)

                            )
                            
                        )
        :effect (and (not (robot-in ?x)) (robot-in ?y))
    )

    (:action clean-office
        :parameters (?x)
        :precondition (and
                            (robot-in ?x)
                            (is-dirty ?x)
                            (is-empty ?x)
                        )
        :effect (and (not (is-dirty ?x)) (is-clean ?x))
    )

    (:action push_box
        :parameters (?box ?x ?y)
        :precondition (and
                            (robot-in ?x)                 
                            (adj ?x ?y)
                            (not(is-empty ?x))
                            (is-empty ?y)) 
        :effect (and        (box-in ?box ?y)
                            (not (box-in ?box ?x))
                            (not (is-empty ?y))
                            (is-empty ?x) )
    )
)