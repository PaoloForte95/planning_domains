
(define (problem block_world)
    (:domain block_world)
    (:objects
        orange green yellow - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (on orange green)
        (clear orange)
        (ontable yellow)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow green)
            (on green orange)
        )
    )
)