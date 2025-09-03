
(define (problem block_world)
    (:domain block_world)
    (:objects
        red purple blue orange - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable blue)
        (on purple blue)
        (on orange purple)
        (clear red)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on red purple)
            (ontable purple)
            (on blue orange)
            (ontable orange)
        )
    )
)