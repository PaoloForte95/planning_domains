(define (problem block_world)
    (:domain block_world)
    (:objects
        blue green yellow orange cyan red pink - block
        robot1 - robot
    )
    (:init
        (ontable blue)
        (on pink blue)
        (on red pink)
        (clear red)
        (ontable yellow)
        (on cyan yellow)
        (clear cyan)
        (ontable orange)
        (clear orange)
        (ontable green)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange green)
            (on green yellow)
            (on yellow blue)
            (ontable blue)
            (clear orange)

            (on cyan red)
            (on red pink)
            (ontable pink)
            (clear cyan)
        )
    )
)