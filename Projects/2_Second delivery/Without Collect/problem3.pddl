(define (problem hard1)
  (:domain waiter_domain2)
  (:objects p c a BTA PUA AUA PMA AMA PLA ALA)
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

    (isPlate p) 
    (isCustomer c)
    (isAgent a)
    (isKitchen BTA)

    (at p BTA)
    (at c PMA)
    (at a PMA)


  )
  (:goal (and(served c)(at a BTA)))
)
