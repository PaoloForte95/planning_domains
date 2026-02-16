
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow purple orange blue green pink cyan red - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable purple)
        (ontable orange)
        (ontable blue)
        (ontable green)
        (on pink green)
        (on cyan pink)
        (ontable red)

        (clear yellow)
        (clear purple)
        (clear orange)
        (clear blue)
        (clear cyan)
        (clear red)
        (not (clear green))
        (not (clear pink))

        (handempty robot1)
    )
    (:goal
        (and
            (on blue yellow)
            (on yellow green)
            (on green orange)
            (on orange red)
            (ontable red)

            (on pink purple)
            (on cyan pink)
            (ontable purple)
        )
    )
)