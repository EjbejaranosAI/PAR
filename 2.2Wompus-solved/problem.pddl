(define (problem wumpus-adl-1)
  (:domain wumpus-adl)

  (:objects
   sq-1-1 sq-1-2 sq-1-3 sq-2-1 sq-2-2 sq-2-3 - square
   the-gold - gold
   the-arrow - arrow
   agent-1 - agent
   wumpus-1 - wumpus)

  (:init (adj sq-1-1 sq-1-2) (adj sq-1-2 sq-1-1)
	 (adj sq-1-2 sq-1-3) (adj sq-1-3 sq-1-2)
	 (adj sq-2-1 sq-2-2) (adj sq-2-2 sq-2-1)
	 (adj sq-2-2 sq-2-3) (adj sq-2-3 sq-2-2)
	 (adj sq-1-1 sq-2-1) (adj sq-2-1 sq-1-1)
	 (adj sq-1-2 sq-2-2) (adj sq-2-2 sq-1-2)
	 (adj sq-1-3 sq-2-3) (adj sq-2-3 sq-1-3)
	 (pit sq-1-2)
	 (at the-gold sq-1-3)
	 (at agent-1 sq-1-1)
	 (alive agent-1)
	 (have agent-1 the-arrow)
	 (at wumpus-1 sq-2-3)
	 (alive wumpus-1))

  (:goal (and (have agent-1 the-gold) (at agent-1 sq-1-1) (alive agent-1)))
  )