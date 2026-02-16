
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red orange - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (on orange red)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on red orange)
        )
    )
)