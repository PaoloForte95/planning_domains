(define (problem block_world)
    (:domain block_world)
    (:objects
        orange blue green red purple - block
        robot1 - robot
    )
    (:init
        (ontable orange)
        (ontable purple)
        (on red purple)
        (on green red)
        (on blue green)
        (clear orange)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange blue)
            (on blue purple)
            (ontable purple)
            (on green red)
            (ontable red)
        )
    )
)