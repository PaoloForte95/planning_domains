(define (problem block_world)
    (:domain block_world)
    (:objects
        red blue - block
        robot1 - robot
    )
    (:init
        (on blue red)
        (ontable red)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on red blue)
        )
    )
)