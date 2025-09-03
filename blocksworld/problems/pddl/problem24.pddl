
(define (problem block_world)
    (:domain block_world)
    (:objects
        green yellow orange red - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (ontable yellow)
        (ontable orange)
        (ontable red)
        (clear green)
        (clear yellow)
        (clear orange)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on red yellow)
            (on yellow orange)
            (on orange green)
            (ontable green)
        )
    )
)