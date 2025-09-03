(define (problem block_world)
    (:domain block_world)
    (:objects
        orange red blue purple - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable purple)
        (on blue purple)
        (on orange blue)
        (clear orange)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange red)
            (on red blue)
            (on blue purple)
        )
    )
)