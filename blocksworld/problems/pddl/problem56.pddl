
(define (problem block_world)
    (:domain block_world)
    (:objects
        pink blue cyan yellow orange green red - block
        robot1 - robot
    )
    (:init
        (on blue cyan)
        (ontable cyan)
        (clear blue)

        (on red pink)
        (ontable pink)
        (clear red)

        (ontable yellow)
        (clear yellow)

        (ontable orange)
        (clear orange)

        (ontable green)
        (clear green)

        (handempty robot1)
    )
    (:goal
        (and
            (on pink blue)
            (on blue cyan)
            (on cyan yellow)
            (on yellow orange)
            (on orange green)
            (ontable green)
            (clear pink)
        )
    )
)