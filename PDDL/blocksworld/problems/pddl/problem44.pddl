
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red orange yellow green purple - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (on orange red)
        (ontable purple)
        (ontable green)
        (ontable yellow)
        (clear orange)
        (clear purple)
        (clear green)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow green)
            (on green purple)
            (on purple red)
            (on red orange)
            (ontable orange)
            (clear yellow)
        )
    )
)