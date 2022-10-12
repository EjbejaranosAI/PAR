(define (problem cleanTask)
        (:domain CleanerRobotTask)
        (:objects   BoxBlue BoxRed  Robot 
                    ofi-0-1 ofi-0-2 
                    ofi-0-3 ofi-0-4
                    ofi-0-5 ofi-0-6
                    ofi-0-7 ofi-0-8
                    ofi-0-9 
        )
        (:init  (adj ofi-0-1 ofi-0-2)(adj ofi-0-1 ofi-0-4)
                (adj ofi-0-4 ofi-0-1)(adj ofi-0-4 ofi-0-5)
                (adj ofi-0-4 ofi-0-7)(adj ofi-0-7 ofi-0-4)
                (adj ofi-0-7 ofi-0-8)(adj ofi-0-8 ofi-0-7)
                (adj ofi-0-8 ofi-0-5)(adj ofi-0-8 ofi-0-9)
                (adj ofi-0-5 ofi-0-2)(adj ofi-0-5 ofi-0-6)
                (adj ofi-0-5 ofi-0-8)(adj ofi-0-5 ofi-0-4)
                (adj ofi-0-2 ofi-0-1)(adj ofi-0-2 ofi-0-5)
                (adj ofi-0-2 ofi-0-3)(adj ofi-0-3 ofi-0-2)
                (adj ofi-0-3 ofi-0-6)(adj ofi-0-6 ofi-0-3)
                (adj ofi-0-6 ofi-0-5)(adj ofi-0-6 ofi-0-9)
                (adj ofi-0-9 ofi-0-8)(adj ofi-0-9 ofi-0-6)

                
                (is-robot Robot)(is-box BoxBlue)(is-box BoxRed)
                (at Robot ofi-0-4)(is-box BoxBlue ofi-0-5)(is-box BoxRed ofi-0-6)

                (is-dirty ofi-0-1)(is-dirty ofi-0-2)(is-dirty ofi-0-3)
                (is-dirty ofi-0-4)(is-dirty ofi-0-5)(is-dirty ofi-0-6)
                (is-dirty ofi-0-7)(is-dirty ofi-0-8)(is-dirty ofi-0-9)
        )
        (:goal (and (is-clean ofi-0-1)(is-clean ofi-0-2)(is-clean ofi-0-3)
                    (is-clean ofi-0-4)(is-clean ofi-0-5)(is-clean ofi-0-6)
                    (is-clean ofi-0-7)(is-clean ofi-0-8)(is-clean ofi-0-9)
                    (at Robot ofi-0-9)(is-box BoxBlue ofi-0-5)(is-box BoxRed ofi-0-6)   
                )
        )
)