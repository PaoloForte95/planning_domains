
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        blue green orange red yellow - block
        robot1 - robot
    )
    (:init
        (on blue orange)
        (on orange green)
        (on green red)
        (on red yellow)
        (ontable yellow)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on blue green)
            (ontable green)
            (on orange red)
            (on red yellow)
            (ontable yellow)
        )
    )
)