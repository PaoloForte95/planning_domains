(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow purple orange red green - block
        robot1 - robot
    )
    (:init
        (ontable orange)
        (ontable red)
        (ontable green)
        (on yellow purple)
        (ontable purple)
        (clear orange)
        (clear red)
        (clear green)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange red)
            (on red green)
            (on green purple)
            (on purple yellow)
        )
    )
)