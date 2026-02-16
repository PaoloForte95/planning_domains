
(define (problem block_world)
    (:domain block_world)
    (:objects
        purple red yellow green orange - block
        robot1 - robot
    )
    (:init
        (ontable purple)
        (ontable red)
        (ontable yellow)
        (ontable green)
        (ontable orange)
        (clear purple)
        (clear red)
        (clear yellow)
        (clear green)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange purple)
            (on purple green)
            (ontable green)
            (on red yellow)
            (ontable yellow)
        )
    )
)