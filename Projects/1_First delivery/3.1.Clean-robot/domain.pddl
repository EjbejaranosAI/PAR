(define (domain CleanerRobotTask)
        (:requirements :typing :strips)
        (:predicates
            
            (Robot-location ?x) ;Robot-location(x),the robot is in office x
            (Box-location ?A ?x)    ;Box-location(A,x),box A is located in office x
            (Dirty ?x)       ;office x is dirty
            (Clean ?x)      ;office x is clean
            (Empty ?x) ;no box in office x
            (Adjacent ?x ?y) ;room x is adjacent to room y
            
        )
    (:action move
        :parameters (?x ?y) ;to move from office x to office y
        :precondition (and
                      (Adjacent ?x ?y)
                      (Robot-location ?x)
                        )
        :effect (and (not (Robot-location ?x)) (Robot-location ?y))
    )
        
        
    (:action clean
        :parameters (?x)
        :precondition (and
                            (Dirty ?x)
                            (Robot-location ?x)
                            (Empty ?x)
                        )
        :effect (and (not (Dirty ?x))(Clean ?x))

    )

    (:action push
        :parameters (?A ?x ?y)
        :precondition (and
                            (Box-location ?A ?x)
                            (Robot-location ?x)
                            (Adjacent ?x ?y)
                            (Empty ?y)
                            
                        ) 
        :effect (and (not (Box-location ?A ?x)) (Box-location ?A ?y)(Empty ?x)(Robot-location ?y))
    )
)