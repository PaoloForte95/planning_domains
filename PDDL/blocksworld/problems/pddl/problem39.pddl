
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow green orange red purple - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (on red yellow)
        (on purple red)
        (clear purple)

        (ontable orange)
        (on green orange)
        (clear green)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow green)
            (on green orange)
            (on red purple)
        )
    )
)