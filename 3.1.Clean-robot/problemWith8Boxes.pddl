(define (problem cleanTask)
        (:domain CleanerRobotTask)
        (:objects   Box1 Box2 Box3 Box4 Box5 Box6 Box7 Box8
                    o1 o2 
                    o3 o4
                    o5 o6
                    o7 o8
                    o9 
        )
        (:init  (Box-location Box1  o9)
                (Box-location Box2  o8)
                (Box-location Box3  o7)
                (Box-location Box4  o5)
                (Box-location Box5  o6)
                (Box-location Box6  o4)
                (Box-location Box7  o3)
                (Box-location Box8  o2)
                (Robot-location o1)

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
                (Box-location Box1  o1)
                (Box-location Box2  o2)
                (Box-location Box3  o3)
                (Box-location Box4  o4)
                (Box-location Box5  o5)
                (Box-location Box6  o6)
                (Box-location Box7  o7)
                (Box-location Box8  o8)
                (not (Dirty o1))(not (Dirty o2))(not (Dirty o3))
                (not (Dirty o4))(not (Dirty o5))(not (Dirty o6))
                (not (Dirty o7))(not (Dirty o8))(not (Dirty o9))
                (Robot-location o9) 
                )
        )
)