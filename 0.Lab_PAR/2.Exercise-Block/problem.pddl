(define (problem pb1) 
    (:domain blocksworld)
        (:objects a b c d e f g h)

        (:init (on-table b) (clear a) (on c b) (on d c) (on e d) (on f e) (on g f) (on h g) (on a h) (arm-empty))
        (:goal (and (on h g) (on g f) (on f e) (on e d) (on d c) (on c b) (on b a) (on-table a)))





