
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow pink green orange purple red - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (on pink green)
        (on yellow pink)
        (clear yellow)

        (ontable orange)
        (on purple orange)
        (on red purple)
        (clear red)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow pink)
            (on pink green)
            (ontable green)

            (on red purple)
            (on purple orange)
            (ontable orange)
        )
    )
)