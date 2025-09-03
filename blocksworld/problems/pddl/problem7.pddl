(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow red orange - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable red)
        (on orange red)
        (clear yellow)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red orange)
        )
    )
)