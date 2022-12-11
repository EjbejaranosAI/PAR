(define (problem cleanTask)
        (:domain CleanerRobotTask)
        (:objects   BoxBlue BoxRed 
                    o1 o2 
                    o3 o4
                    o5 o6
                    o7 o8
                    o9 
        )
        (:init  (Box-location BoxRed o5)
                (Robot-location o4)
                (Box-location BoxBlue o6)

                ;All offices are dirty
                (Dirty o1)(Dirty o2)(Dirty o3)
                (Dirty o4)(Dirty o5)(Dirty o6)
                (Dirty o7)(Dirty o8)(Dirty o9)

                (Empty o1)(Empty o2)(Empty o3)
                (Empty o4)(not(Empty o5))(not(Empty o6))
                (Empty o7)(Empty o8)(Empty o9)
                
                (Adjacent o1 o2)(Adjacent o1 o4)
                (Adjacent o4 o1)(Adjacent o4 o5)
                (Adjacent o4 o7)(Adjacent o7 o4)
                (Adjacent o7 o8)(Adjacent o8 o7)
                (Adjacent o8 o5)(Adjacent o8 o9)
                (Adjacent o5 o2)(Adjacent o5 o6)
                (Adjacent o5 o8)(Adjacent o5 o4)
                (Adjacent o2 o1)(Adjacent o2 o5)
                (Adjacent o2 o3)(Adjacent o3 o2)
                (Adjacent o3 o6)(Adjacent o6 o3)
                (Adjacent o6 o5)(Adjacent o6 o9)
                (Adjacent o9 o8)(Adjacent o9 o6)

        )
        (:goal (and    
                (Box-location BoxRed o6)
                (Box-location BoxBlue o8)
                (not (Dirty o1))(not (Dirty o2))(not (Dirty o3))
                (not (Dirty o4))(not (Dirty o5))(not (Dirty o6))
                (not (Dirty o7))(not (Dirty o8))(not (Dirty o9))
                (Robot-location o9) 
                )
        )
)