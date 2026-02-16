
(define (problem block_world)
    (:domain block_world)
    (:objects
        blue green red yellow orange pink - block
        robot1 - robot
    )
    (:init
        (ontable blue)
        (on green blue)
        (clear green)
        (ontable red)
        (clear red)
        (ontable yellow)
        (clear yellow)
        (ontable orange)
        (on pink orange)
        (clear pink)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red orange)
            (on orange green)
            (on green pink)
            (on pink blue)
            (clear yellow)
            (ontable blue)
        )
    )
)