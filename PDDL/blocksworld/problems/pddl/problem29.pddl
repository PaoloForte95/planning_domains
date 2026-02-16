
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        orange yellow purple green red - block
        robot1 - robot
    )
    (:init
        (ontable orange)
        (clear orange)
        (ontable yellow)
        (clear yellow)
        (ontable purple)
        (clear purple)
        (ontable green)
        (on red green)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow purple)
            (ontable purple)
            (on green red)
            (ontable red)
        )
    )
)