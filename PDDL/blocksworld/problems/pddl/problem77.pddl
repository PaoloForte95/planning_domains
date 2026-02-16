
(define (problem block_world)
    (:domain block_world)
    (:objects
        red orange blue green cyan purple pink yellow - block
        robot1 - robot
    )
    (:init
        (ontable purple)
        (ontable cyan)
        (ontable yellow)
        (ontable pink)
        (ontable blue)
        (ontable red)
        (ontable green)
        (ontable orange)
        (clear purple)
        (clear cyan)
        (clear yellow)
        (clear blue)
        (clear red)
        (clear orange)
        (clear green)
        (clear pink)
        (handempty robot1)
    )
    (:goal
        (and
            (on red orange)
            (on orange blue)
            (ontable blue)

            (on green cyan)
            (ontable cyan)

            (on purple pink)
            (on pink yellow)
            (ontable yellow)
        )
    )
)