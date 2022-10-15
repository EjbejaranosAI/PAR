(define (domain CleanerRobotTask)
        (:requirements :strips :equality)
        (:predicates    (robot-at ?x)
                        (box-at ?x ?y)
                        (is-dirty ?x)
                        (is-clean ?x)
                       (is-empty ?x)
                        (adj ?x ?y))
        (:action clean
            :parameters (?ofi)            
            :precondition (and 
                                (robot-at ?ofi) 
                                (is-empty ?ofi) 
                                (is-dirty ?ofi) 
                            )
            :effect (and 
                        (not (is-dirty ?ofi)) 
                        (is-clean ?ofi)
                    )
        )

        (:action move-robot
            :parameters (?from ?to)
            :precondition (and  
                                (robot-at ?from) 
                                (or (adj ?from ?to)
                                    (adj ?to ?from))
                           )
            :effect (and 
                        (not(robot-at ?from))
                        (robot-at ?to)
                    )            
        )

        (:action push
            :parameters (?box ?from ?to)
            :precondition (and 
                                (box-at ?box ?from) 
                                (adj ?from ?to) 
                                (robot-at ?from) 
                                (not (is-empty ?from)) 
                                (is-empty ?to) 
                                (is-dirty ?from)
                            )
            :effect (and 
                        (not (box-at ?box ?from)) 
                        (box-at ?box ?to) 
                        (is-empty ?from)
                        (not (is-empty ?to))
                    ) 
        )
    )