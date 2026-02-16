
(define (problem block_world)
    (:domain block_world)
    (:objects
        cyan blue pink red purple green yellow orange - block
        robot1 - robot
    )
    (:init
        (ontable cyan)
        (ontable orange)
        (on purple orange)
        (ontable blue)
        (ontable pink)
        (ontable green)
        (ontable yellow)
        (on red yellow)
        (clear cyan)
        (clear purple)
        (clear blue)
        (clear pink)
        (clear green)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on cyan blue)
            (on blue pink)
            (on pink red)
            (on red purple)
            (ontable purple)
            (on green yellow)
            (on yellow orange)
            (ontable orange)
            (clear cyan)
            (clear green)
        )
    )
)