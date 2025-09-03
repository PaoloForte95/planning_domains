
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        blue green orange red yellow - block
        robot1 - robot
    )
    (:init
        (ontable orange)
        (on green orange)
        (on blue green)
        (ontable red)
        (ontable yellow)
        (clear blue)
        (clear red)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red orange)
            (on orange green)
            (on green blue)
            (ontable blue)
        )
    )
)