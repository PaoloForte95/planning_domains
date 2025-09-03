
(define (problem block_world)
    (:domain block_world)
    (:objects
        red green yellow orange - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (on green red)
        (on yellow green)
        (ontable orange)
        (clear yellow)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange green)
            (on green red)
            (ontable red)
            (ontable yellow)
        )
    )
)