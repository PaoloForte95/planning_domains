(define (problem block_world)
    (:domain block_world)
    (:objects
        red yellow orange green purple - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (on yellow green)
        (on orange yellow)
        (on purple orange)
        (ontable red)
        (clear purple)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on red yellow)
            (on yellow orange)
            (on orange green)
            (on green purple)
        )
    )
)