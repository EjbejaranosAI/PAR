(define (problem cleanTask2)
        (:domain CleanerRobotTask2)
        (:objects   BoxBlue BoxRed 
                    ofi1 ofi2 
                    ofi3 ofi4
                    ofi5 ofi6
                    ofi7 ofi8
                    ofi9 
        )
        (:init  
                (robot-in ofi4)
                (box-in BoxRed ofi5)               
                (box-in BoxBlue ofi6)
                
                (adj ofi1 ofi2)(adj ofi1 ofi4)
                (adj ofi4 ofi1)(adj ofi4 ofi5)
                (adj ofi4 ofi7)(adj ofi7 ofi4)
                (adj ofi7 ofi8)(adj ofi8 ofi7)
                (adj ofi8 ofi5)(adj ofi8 ofi9)
                (adj ofi5 ofi2)(adj ofi5 ofi6)
                (adj ofi5 ofi8)(adj ofi5 ofi4)
                (adj ofi2 ofi1)(adj ofi2 ofi5)
                (adj ofi2 ofi3)(adj ofi3 ofi2)
                (adj ofi3 ofi6)(adj ofi6 ofi3)
                (adj ofi6 ofi5)(adj ofi6 ofi9)
                (adj ofi9 ofi8)(adj ofi9 ofi6)

                ;All offices are dirty
                (is-dirty ofi1)(is-dirty ofi2)
                (is-dirty ofi3)(is-dirty ofi4)
                (is-dirty ofi5)(is-dirty ofi6)
                (is-dirty ofi7)(is-dirty ofi8)
                (is-dirty ofi9)


        )
        ; (:goal (and (is-clean ofi9)))
        (:goal (and    
                (box-in BoxBlue ofi8 )
                (box-in BoxRed ofi6 )
                (robot-in ofi9)  
                (is-clean ofi1)
                (is-clean ofi2)
                (is-clean ofi3)
                (is-clean ofi4)
                (is-clean ofi5)
                (is-clean ofi6)
                (is-clean ofi7)
                (is-clean ofi8)
                (is-clean ofi9)
                )
        )
)