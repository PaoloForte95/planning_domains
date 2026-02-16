
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        yellow blue pink orange green cyan red - block
        robot1 - robot
    )
    (:init
        (ontable cyan)
        (ontable blue)
        (on orange blue)
        (ontable yellow)
        (ontable pink)
        (ontable green)
        (on red green)
        (clear orange)
        (clear yellow)
        (clear pink)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow blue)
            (on blue pink)
            (ontable pink)
            (on orange green)
            (on green cyan)
            (on cyan red)
            (ontable red)
            (clear orange)
            (clear yellow)
        )
    )
)