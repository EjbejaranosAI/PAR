(define (domain CleanerRobotTask)
        (:requirements :typing :strips)
        (:predicates
            
            (at ?what ?square) ;ok
            (adj ?from ?to);ok
            (is-box ?box) ;ok
            (is-robot ?who)      ;ok
            (box-in ?box ?square) ;ok
            (is-clean ?square) ;ok
            (is-dirty ?square);ok
            
            
        )
    (:action clean-office
        :parameters (?who ?square ?box)
        :precondition (and  (is-dirty ?square)
                            (not (is-clean ?square)) 
                            (not (box-in ?box ?square))  
                            (is-robot ?who) (at ?who ?square))
        :effect (and  (not (is-dirty ?square)) (is-clean ?square))
    )

    (:action move_to_office
        :parameters (?who ?from ?to ?box)
        :precondition (and
                            (is-robot ?who)
                            (at ?who ?from)
                            (adj ?from ?to)
                            (not(box-in ?box ?to)))
        :effect (and (not (at ?who ?from)) (at ?who ?to))
    )
    (:action push_box
        :parameters (?who ?from ?to ?box)
        :precondition (and
                            (is-robot ?who)
                            (at ?who ?from)
                            (adj ?from ?to)
                            (is-box ?box)
                            (box-in ?box ?from)
                            (not (box-in ?box ?to))
                        ) 
        :effect (and (not (box-in ?box ?from)) (box-in ?box ?to))
    )
)