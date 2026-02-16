
(define (problem block_world)
    (:domain block_world)
    (:objects
        green pink yellow red purple orange - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (on pink green)
        (on yellow pink)
        (clear yellow)
        (ontable purple)
        (on red purple)
        (clear red)
        (ontable orange)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange green)
            (on green red)
            (on red pink)
            (ontable pink)
            (on yellow purple)
            (ontable purple)
        )
    )
)