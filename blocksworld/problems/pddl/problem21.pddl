
(define (problem block_world)
    (:domain block_world)
    (:objects
        red pink purple orange yellow - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable pink)
        (ontable purple)
        (ontable orange)
        (on yellow orange)
        (clear red)
        (clear pink)
        (clear purple)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on purple pink)
            (on pink orange)
            (ontable orange)
            (on red yellow)
            (ontable yellow)
        )
    )
)