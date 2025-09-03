
(define (problem block_world)
    (:domain block_world)
    (:objects
        pink purple orange yellow red - block
        robot1 - robot
    )
    (:init
        (on pink purple)
        (on yellow pink)
        (on red orange)
        (ontable orange)
        (ontable purple)
        (clear yellow)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on pink purple)
            (on purple orange)
            (ontable orange)
            (on red yellow)
            (ontable yellow)
        )
    )
)