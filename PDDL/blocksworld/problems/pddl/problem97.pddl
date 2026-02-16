
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        yellow red orange blue purple cyan pink green - block
        robot1 - robot
    )
    (:init
        (on yellow red)
        (on red orange)
        (ontable orange)
        (clear yellow)

        (on purple blue)
        (on blue cyan)
        (on cyan pink)
        (on pink green)
        (ontable green)
        (clear purple)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red orange)
            (ontable orange)
            (clear yellow)

            (on purple blue)
            (on blue cyan)
            (on cyan pink)
            (on pink green)
            (ontable green)
            (clear purple)
        )
    )
)