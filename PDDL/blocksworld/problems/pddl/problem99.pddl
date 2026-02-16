
(define (problem block_world)
    (:domain block_world)
    (:objects
        green blue yellow pink orange red purple cyan - block
        robot1 - robot
    )
    (:init
        (on green blue)
        (on blue yellow)
        (ontable yellow)
        (clear green)

        (on purple green)
        (on green orange)
        (on orange cyan)
        (on cyan blue)
        (on blue red)
        (ontable red)
        (clear purple)

        (handempty robot1)
    )
    (:goal
        (and
            (on green blue)
            (on blue yellow)
            (ontable yellow)
            (clear green)

            (on pink orange)
            (on orange red)
            (on red purple)
            (on purple cyan)
            (ontable cyan)
            (clear pink)
        )
    )
)