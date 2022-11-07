
(define (domain strips-sliding-tile)
  (:requirements :strips :adl)
  (:predicates
   (Adjacent ?x ?y)
   (at ?x ?y)
   (Hasfood ?x)
   (served ?x)
   (holding ?a ?x)
   (isLocation ?x) 
   (isPlate ?x) 
   (isCustomer ?x) 
   (isKitchen ?l) 
   (isAgent ?x)
    )
  (:action Pick-up
    :parameters (?l ?p ?a) 
    :precondition (and (isPlate ?p) (isLocation ?l)(isKitchen ?l)(isAgent ?a)(not(holding ?a ?p))(at ?p ?l)(at ?a ?l))
    :effect (and (not (at ?p ?l)) (holding ?a ?p)) 
  )  
  (:action Present
    :parameters (?l ?p ?a ?c) 
    :precondition (and (isPlate ?p) (isAgent ?a)(isLocation ?l)(isCustomer ?c)(not(served ?c))(holding ?a ?p)(Hasfood ?p)(at ?a ?l)(at ?c ?l))
    :effect (and (not (holding ?a ?p)) (served ?c))
  )
  
  (:action Fill
    :parameters (?l ?p ?a) 
    :precondition (and (isPlate ?p)(isAgent ?a)(isLocation ?l)(holding ?a ?p)(not(Hasfood ?p))(isKitchen ?l)(at ?a ?l))
    :effect (and (Hasfood ?p))
  )
  (:action Move
    :parameters (?l1 ?l2 ?a) 
    :precondition (and (isLocation ?l1) (isLocation ?l2)(isAgent ?a)(Adjacent ?l1 ?l2)(at ?a ?l1))
    :effect (and (not(at ?a ?l1))(at ?a ?l2))
  )
)