
(define (problem block_world)
    (:domain block_world)
    (:objects
        red blue green pink orange yellow cyan - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (on blue red)
        (clear blue)

        (ontable pink)
        (on green pink)
        (clear green)

        (ontable yellow)
        (on cyan yellow)
        (on orange cyan)
        (clear orange)

        (handempty robot1)
    )
    (:goal
        (and
            (on green pink)
            (on pink orange)

            (on red blue)
            (on blue yellow)
            (on yellow cyan)
        )
    )
)