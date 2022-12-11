(define (problem hard1)
  (:domain strips-sliding-tile2)
  (:objects p1 p2 c1 c2 a BTA PUA AUA PMA AMA PLA ALA)
  (:init
    (isLocation BTA)
    (isLocation PUA)
    (isLocation AUA)
    (isLocation PMA)
    (isLocation AMA)
    (isLocation PLA)
    (isLocation ALA)

    (Adjacent BTA AUA)
    (Adjacent AMA AUA)
    (Adjacent AMA ALA)
    (Adjacent PLA ALA)
    (Adjacent PLA PMA)
    (Adjacent PUA PMA)


    (isPlate p1) 
    (isPlate p2)
    (isCustomer c1)
    (isCustomer c2)
    (isAgent a)
    (isKitchen BTA)

    (at p1 BTA)
    (at p2 BTA)
    (at c1 PMA)
    (at c2 AMA)
    (at a PMA)


  )
  (:goal (and(served c1)(served c2)(at a BTA)(clean PMA c1)(clean AMA c2)))
)
