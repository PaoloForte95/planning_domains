
(define (problem block_world)
    (:domain block_world)
    (:objects
        red pink yellow orange green blue cyan purple - block
        robot1 - robot
    )
    (:init
        (on red pink)
        (on pink yellow)
        (ontable yellow)
        (clear red)

        (on green orange)
        (ontable orange)
        (clear green)

        (on cyan blue)
        (on blue purple)
        (ontable purple)
        (clear cyan)

        (handempty robot1)
    )
    (:goal
        (and
            (on blue green)
            (on green orange)
            (on orange cyan)
            (on cyan red)
            (ontable red)
            (on purple pink)
            (on pink yellow)
            (ontable yellow)
            (clear blue)
            (clear purple)
        )
    )
)