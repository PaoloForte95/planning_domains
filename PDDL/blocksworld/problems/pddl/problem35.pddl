
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        blue pink red yellow orange green - block
        robot1 - robot
    )
    (:init
        (ontable blue)
        (ontable pink)
        (ontable red)
        (ontable yellow)
        (ontable orange)
        (ontable green)
        (clear blue)
        (clear pink)
        (clear red)
        (clear yellow)
        (clear orange)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow pink)
            (on pink orange)
            (on orange blue)
            (ontable blue)
            (clear yellow)
            (on green red)
            (ontable red)
            (clear green)
        )
    )
)