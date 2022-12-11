(define (domain CleanerRobotTask)
        (:requirements :typing :strips)
        (:predicates
            
            (at ?what ?square) ;ok
            (adj ?from ?to);ok
            (is-boxRed ?box) ;ok
            (is-robot ?who)      ;ok
            (box-in ?square ?box) ;ok
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
                            (is-boxRed ?box)
                            (at ?who ?square)
                            (is-dirty ?square)
                            (not (box-in ?square ?box))
                         
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
        :parameters (?from ?box ?to ?who)
        :precondition (and
                            ;(at ?who ?square)
                            (is-BoxRed ?box)
                            (is-robot ?who)
                            ;(at ?who ?from)
                            (adj ?from ?to)
                        ) 
        :effect (and (not (box-in ?from ?box)) (box-in ?to ?box))
    )
)pre