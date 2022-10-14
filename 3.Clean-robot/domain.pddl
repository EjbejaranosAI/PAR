(define (domain CleanerRobotTask)
        (:requirements :typing :strips)
        (:predicates
            
            (at ?what ?square) ;ok
            (adj ?from ?to);ok
            (is-box ?box) ;ok
            (is-robot ?who)      ;ok
            (box-in ?square) ;ok
            (is-clean ?square) ;ok
            (is-dirty ?square);ok
            
            
        )
    (:action move_to_office
        :parameters (?from ?who ?to)
        :precondition (and
                            (is-robot ?who)
                            (at ?who ?from)
                            (adj ?from ?to)
                  
            
                        )
        :effect (and (not (at ?who ?from)) (at ?who ?to))
    )

        
        
        
        
    (:action clean-office
        :parameters (?square ?who ?box)
        ;precondition with not clean if are a box in the square
        :precondition (and
                            (is-robot ?who)
                            (is-box ?box)
                            (at ?who ?square)
                            (is-dirty ?square)
                            (not (box-in ?square))
                         
                        )
        :effect (and (not (is-dirty ?square)))

    )
    ;    :parameters (?who ?square ?box)
    ;    :precondition (and  (is-dirty ?square)
                            ;precondition to not clean if are a box in the square
                            ;(not (box-in ?box ?square))
    ;                        (box-in ?box ?square)
    ;                        (is-robot ?who) 
    ;                        (at ?who ?square))
    ;    :effect (and  (not (is-dirty ?square)))
    ;)

    (:action push_box
        :parameters (?from ?box ?to ?who ?square)
        :precondition (and
                            (at ?who ?square)
                            (is-robot ?who)
                            ;(at ?who ?from)
                            (adj ?from ?to)
                            (box-in ?square)
                            
                        ) 
        :effect (and (not (box-in ?from)) (box-in ?to))
    )
)