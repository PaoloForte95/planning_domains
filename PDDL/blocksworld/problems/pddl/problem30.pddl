
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow red blue orange green - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (on red yellow)
        (on blue red)
        (on orange blue)
        (on green orange)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red blue)
            (on blue orange)
            (on orange green)
            (ontable green)
        )
    )
)