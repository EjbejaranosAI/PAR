(define (domain CleanerRobotTask)
        (:requirements :typing :strips)
        (:predicates
            
            (at ?what ?square)
            (adj ?square-1 ?square-2)
            (box-in ?who ?square)
            (is-robot ?who)
            (is-box ?who)
            (is-dirty ?square)
            (is-clean ?square)

        )
    (:action clean-office
        :parameters (?who - robot ?square ?dirty-square)
        :precondition (and (not (is-clean ?square)) (not (box-in ?dirty-square))(is-dirty ?square) (is-robot ?who) (at ?who ?square))
        :effect (and  (not (is-dirty ?square)) (is-clean ?square))
    )

    (:action Move_to_office
        :parameters (?who ?square-1 ?square-2)
        :precondition (and  (not((box-in ?who ?square-2)))
                            (is-robot ?who)     
                            (at ?who ?square-1)     
                            (adj ?square-1 ?square-2))
        :effect (and (not (at ?who ?square-1)) (at ?who ?square-2))
    )
    (:action push_box
        :parameters (?who ?from ?to)
        :precondition (and (is-robot ?who) (box-in ?who ?from) (adj ?from ?to) (is-dirty ?to))
        :effect (and (not (box-in ?who ?from)) (box-in ?who ?to) (not (is-dirty ?to)) (is-clean ?to))    
        
    )


)