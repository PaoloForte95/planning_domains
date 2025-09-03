
(define (problem block_world)
    (:domain block_world)
    (:objects
        orange yellow purple blue green red cyan pink - block
        robot1 - robot
    )
    (:init
        (on orange pink)
        (ontable pink)
        (clear orange)

        (on yellow cyan)
        (ontable cyan)
        (clear yellow)

        (on purple red)
        (ontable red)
        (clear purple)

        (on blue green)
        (ontable green)
        (clear blue)

        (handempty robot1)
    )
    (:goal
        (and
            (on blue purple)
            (on purple yellow)
            (on yellow orange)
            (ontable orange)
            (clear blue)

            (on green red)
            (on red cyan)
            (on cyan pink)
            (ontable pink)
        )
    )
)