
(define (problem block_world)
    (:domain block_world)
    (:objects
        red yellow green orange - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable green)
        (ontable orange)
        (on red green)
        (clear red)
        (clear yellow)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow red)
            (on red green)
        )
    )
)