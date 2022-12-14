(define (problem cleanTask)
        (:domain CleanerRobotTask)
        (:objects   BoxBlue BoxRed  Robot 
                    ofi-0-1 ofi-0-2 
                    ofi-0-3 ofi-0-4
                    ofi-0-5 ofi-0-6
                    ofi-0-7 ofi-0-8
                    ofi-0-9 
        )
        (:init  (is-boxRed BoxRed)(is-robot Robot);(at BoxRed ofi-0-6)
                ;(is-box BoxBlue);(at BoxBlue ofi-0-5)
                (at Robot ofi-0-4)
                (box-in ofi-0-6 BoxRed);(box-in ofi-0-5)
                
                (adj ofi-0-1 ofi-0-2)(adj ofi-0-1 ofi-0-4)
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

                
                
                
                ;All offices are dirty
                (is-dirty ofi-0-1)(is-dirty ofi-0-2)(is-dirty ofi-0-3)
                (is-dirty ofi-0-4)(is-dirty ofi-0-5)(is-dirty ofi-0-6)
                (is-dirty ofi-0-7)(is-dirty ofi-0-8)(is-dirty ofi-0-9)


        )
        (:goal (and    
                
                ;(at BoxRed ofi-0-6);(box-in BoxBlue ofi-0-5)
                (box-in ofi-0-6 BoxRed)
                (not (is-dirty ofi-0-1))(not (is-dirty ofi-0-2))(not (is-dirty ofi-0-3))
                (not (is-dirty ofi-0-4))(not (is-dirty ofi-0-5))(not (is-dirty ofi-0-6))
                (not (is-dirty ofi-0-7))(not (is-dirty ofi-0-8))(not (is-dirty ofi-0-9))
                (at Robot ofi-0-9) 
                )
        )
)