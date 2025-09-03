
(define (problem block_world)
    (:domain block_world)
    (:objects
        orange red blue yellow green purple - block
        robot1 - robot
    )
    (:init
        (ontable orange)
        (clear orange)

        (ontable red)
        (on blue red)
        (clear blue)

        (ontable yellow)
        (on purple yellow)
        (on green purple)
        (clear green)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red orange)
            (on green blue)
            (on blue purple)
        )
    )
)