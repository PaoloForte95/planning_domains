(define (problem block_world)
    (:domain block_world)
    (:objects
        red blue cyan yellow orange pink green - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable yellow)
        (ontable pink)
        (ontable green)
        (on blue red)
        (on cyan yellow)
        (on orange pink)
        (clear blue)
        (clear cyan)
        (clear orange)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange pink)
            (on pink green)
            (on green yellow)
            (on blue cyan)
            (on cyan red)
        )
    )
)