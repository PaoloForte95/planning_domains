
(define (problem block_world)
    (:domain block_world)
    (:objects
        orange yellow purple red pink - block
        robot1 - robot
    )
    (:init
        (ontable purple)
        (on pink purple)
        (clear pink)
        (ontable yellow)
        (clear yellow)
        (ontable orange)
        (clear orange)
        (ontable red)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow purple)
            (on red pink)
        )
    )
)