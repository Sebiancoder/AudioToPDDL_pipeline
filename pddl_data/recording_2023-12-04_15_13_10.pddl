(domain robot)

(types
  room
  object
)

(predicates
  (at ?obj - object ?room - room)
  (visited ?room - room)
)

(objects
  r - robot
  k - kitchen
  l - living_room
  b - bedroom
)

(init
  (at r l)
)

(goal
  (and
    (visited k)
    (visited l)
    (visited b)
  )
)

(actions
  (move ?from - room ?to - room
    :precondition (at r ?from)
    :effect (and
              (not (at r ?from))
              (at r ?to)
              (visited ?to)
            )
  )
)

)