
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow orange green pink blue red cyan - block
        robot1 - robot
    )
    (:init
        (ontable cyan)
        (clear cyan)
        (ontable pink)
        (clear pink)
        (ontable blue)
        (on red blue)
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
            (on yellow orange)
            (on orange green)
            (ontable green)
            (clear yellow)
            (on pink blue)
            (on blue red)
            (on red cyan)
            (ontable cyan)
            (clear pink)
        )
    )
)