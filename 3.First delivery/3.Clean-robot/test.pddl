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