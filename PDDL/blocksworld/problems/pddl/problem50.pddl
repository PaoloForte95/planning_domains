
(define (problem block_world)
    (:domain block_world)
    (:objects
        red purple orange yellow green blue - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable orange)
        (ontable yellow)
        (on purple yellow)
        (on green purple)
        (on blue green)
        (clear red)
        (clear orange)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on red purple)
            (on purple orange)
            (on orange yellow)
            (on yellow green)
            (on green blue)
        )
    )
)