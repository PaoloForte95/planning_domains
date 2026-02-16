
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow orange cyan blue green pink red purple - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable orange)
        (ontable cyan)
        (ontable blue)
        (ontable green)
        (ontable pink)
        (ontable red)
        (ontable purple)
        (clear yellow)
        (clear cyan)
        (clear purple)
        (clear pink)
        (clear red)
        (clear green)
        (clear orange)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on purple red)
            (on red orange)
            (on orange cyan)
            (ontable cyan)
            (clear purple)

            (on blue yellow)
            (on yellow pink)
            (on pink green)
            (ontable green)
            (clear blue)
        )
    )
)