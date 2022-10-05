;OBJECTS
;Define the object -> tiles and position


;PREDICATIONS
;Defind predications -> is a tile and position in the x and y position
;Define the rules -> where is a -tile, -blank space  and position in the x and y position
;Define in predications the increment on ?x and ?y
;Define in predications the decrement on ?x and ?y

;ACTIONS
;move_up -> parameters, where are the ?x and ?y as precodition and the effects
;move_down
;move_left
;move_right

;         Initial State
;       P1      P2      P3
;;  P1  1       2       3
;;  P2  4       5       6
;;  P3  7       8       9 

;         Goal State
;       P1      P2      P3
;;  P1  1       2       3
;;  P2  4       5       6
;;  P3  7       8       9

;Define the object -> tiles and position
(define (domain puzzle)
        (:requirements :strips :adl)
        (:predicates 
            (tile ?x)
            (position ?x)
            (at ?x ?t ?y)
            (blank ?x ?y)
            (inc ?p ?pp)
            (dec ?p ?pp)
        )

        (:action move-up
            :parameters (?t ?px ?py ?by)
            :precondition   (and
                                (tile ?t) 
                                (position ?px) 
                                (position ?py) 
                                (position ?by)
                                (dec ?by ?py)
                                (blank ?px ?by)
                                (at ?t ?px ?py)
                            )
            :effect (and 
                        (not (blank ?px ?by)) 
                        (not (at ?t ?px ?py))
                        (blank ?px ?py)
                        (at ?t ?px ?by)
                    )
        )

        (:action move-down
            :parameters (?t ?px ?py ?by)
            :precondition (and
                            (tile ?t)
                            (position ?px)
                            (position ?py)
                            (position ?by)
                            (inc ?by ?py)
                            (blank ?px ?by)
                            (at ?t ?px ?py)
                            )
            :effect (and
                        (not(blank ?px ?by))
                        (not (at ?t ?px ?py))
                        (blank ?px ?py)
                        (at ?t ?px ?by))
        )
        (:action move-left
            :parameters (?t ?px ?py ?bx)
            :precondition (and 
                            (tile ?t)
                            (position ?px)
                            (position ?py)
                            (position ?bx)
                            (dec ?bx ?px)
                            (blank ?bx ?py)
                            (at ?t ?px ?py)
                            ) 
            :effect (and 
                        (not (blank  ?bx ?py))
                        (not (at ?t ?px ?py))
                        (blank ?px ?py) 
                        (at ?t ?bx ?py))
        )
        (:action move-right
            :parameters (?t ?px ?py ?bx)
            :precondition (and 
                            (tile ?t)
                            (position ?px)
                            (position ?py)
                            (position ?bx)
                            (inc ?bx ?px)
                            (blank ?bx ?py)
                            (at ?t ?px ?py))
            :effect (and 
                        (not (blank ?bx ?py))
                        (not (at ?t ?px ?py))
                        (blank ?px ?py)
                        (at ?t ?bx ?py))
        )
)