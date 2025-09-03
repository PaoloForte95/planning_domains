
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        yellow green blue purple - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable purple)
        (on green purple)
        (on blue green)
        (clear blue)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on green yellow)
            (on blue purple)
            (on yellow table)
            (on purple table)
        )
    )
)