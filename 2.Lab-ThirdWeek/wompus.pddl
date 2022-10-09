(define (problem wompusWorld-a)
        (:domain wompusWorld)
        (:objects   room1-1 room1-2 room1-3
                    room2-1 room2-2 room2-3 -room
                    gold    wompus  agent 
                    arrow   
        )
        (:init
            ;Room 1-1 
            (adj (room1-1 room1-2))
            (adj (room1-1 room2-1))
            ;Room 1-2
            (adj (room1-2 room1-3))
            (adj (room1-2 room1-1))
            (adj (room1-2 room2-2))
            ;Room 1-3
            (adj (room1-3 room1-2))
            (adj (room1-3 room2-3))
            ;Room 2-1
            (adj (room2-1 room2-2))
            (adj (room2-1 room1-1))
            ;Room 2-2
            (adj (room2-2 room2-1))
            (adj (room2-2 room1-2))
            (adj (room2-2 room2-3))
            ;Room 2-3
            (adj (room2-3 room2-2))
            (adj (room2-3 room1-3))
            ;Pit location
            (pit room1-2)
            ;at gold
            (at gold room1-3)
            ;Wompus location
            (at wompus room2-3)
            ;Agent location
            (at agent room1-1)
            ;Agent with arrow
            (have agent arrow)
            ;Agent alive
            (alive agent)
            ;Wompus alive
            (alive wompus)
            (is-arrow arrow)
            


        )
        (:goal (and
                    (have agent gold)
                    (alive agent)
                    (not (dead agent))  
        ))

)