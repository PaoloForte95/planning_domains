
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        orange green red blue - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (on blue red)
        (on orange blue)
        (on green orange)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange green)
            (on green red)
            (on red blue)
        )
    )
)