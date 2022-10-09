(define (domain wompusWorld)
    (:requirements :strips :adl :typing)
    (:predicates
        (adj ?room-1 ?room-2 - square)
        (pit ?room - room)
        (at ?what ?square)
        (have ?who ?what)
        (alive ?who))

    (:action move
        :parameters (?who -agent ?from -room ?to -room)
        :precondition (and (alive ?who)
                            (at ?who ?from)
                            (adj ?from ?to)
                            (not (pit ?to)))
        :effect (and    (not (at ?who ?from))
                        (at ?who ?to))
    )
    (:action take
        :parameters (?who - agent ?where -room ?what)
        :precondition (and 
                        (takebale ?what)
                        (alive ?who)
                        (at ?who ?where)
                        (at ?what ?where)
                    )
        :effect (and 
            (have ?who ?what)
            (not (at ?what ?where))
            )

    )
    (:action shoot
        :parameters (?who -agent ?where -room ?arrow -arrow ?victim -wompus ?whereVictim -room)
        :precondition (and 
                        (alive ?who)
                        (have ?who ?with-arrow)
                        (wompus  ?victim)
                        (alive ?victim)
                        (at ?victim ?whereVictim)
                        (adj ?where ?whereVictim))
        :effect (and 
                    (dead ?victim)
                    (not (alive ?victim))
                    (not (have ?who ?with-arrow))
                    (not (alive ?victim)))
    )
)