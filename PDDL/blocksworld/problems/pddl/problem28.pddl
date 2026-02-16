
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        yellow green orange red purple - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable green)
        (ontable orange)
        (ontable red)
        (on purple red)
        (clear yellow)
        (clear green)
        (clear orange)
        (clear purple)
        (handempty robot1)
    )
    (:goal
        (and
            (on purple orange)
            (on orange green)
            (on green yellow)
            (on yellow red)
            (ontable red)
        )
    )
)