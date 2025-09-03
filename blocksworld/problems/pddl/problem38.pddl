(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red blue orange purple - block
        robot1 - robot
    )
    (:init
        (ontable purple)
        (on blue purple)
        (on orange blue)
        (ontable red)
        (clear orange)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on red blue)
            (on blue orange)
            (ontable orange)
            (ontable purple)
            (clear red)
            (clear purple)
        )
    )
)