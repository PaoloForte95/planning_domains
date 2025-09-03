
(define (problem block_world)
    (:domain block_world)
    (:objects
        pink red green yellow purple orange - block
        robot1 - robot
    )
    (:init
        (ontable pink)
        (on red pink)
        (on green red)
        (on yellow green)
        (ontable purple)
        (on orange purple)
        (clear yellow)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow pink)
            (ontable pink)
            (on green purple)
            (on purple red)
            (ontable red)
        )
    )
)