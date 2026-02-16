
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        blue yellow orange green purple red - block
        robot1 - robot
    )
    (:init
        (ontable orange)
        (ontable red)
        (on yellow red)
        (on green yellow)
        (on blue green)
        (on purple blue)
        (clear purple)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on blue yellow)
            (on yellow orange)
            (ontable orange)
            (on green purple)
            (on purple red)
            (ontable red)
        )
    )
)