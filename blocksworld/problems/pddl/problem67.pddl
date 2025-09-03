
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        pink yellow red orange blue green cyan robot1 - block robot
    )
    (:init
        (ontable pink)
        (ontable red)
        (ontable orange)
        (on yellow pink)
        (on blue orange)
        (on green blue)
        (on cyan green)
        (clear yellow)
        (clear red)
        (clear cyan)
        (handempty robot1)
    )
    (:goal
        (and
            (on cyan blue)
            (on blue green)
            (on green red)
            (on red orange)
            (on orange yellow)
            (on yellow pink)
            (ontable pink)
            (clear cyan)
        )
    )
)