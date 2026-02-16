
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red green yellow orange purple - block
        robot1 - robot
    )
    (:init
        (on green red)
        (ontable red)
        (clear green)

        (on yellow purple)
        (on purple orange)
        (ontable orange)
        (clear yellow)

        (handempty robot1)
    )
    (:goal
        (and
            (on green purple)
            (on purple orange)
            (ontable orange)

            (on yellow red)
            (ontable red)
        )
    )
)