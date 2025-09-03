
(define (problem block_world)
    (:domain block_world)
    (:objects
        red green orange yellow blue pink cyan - block
        robot1 - robot
    )
    (:init
        (on red green)
        (on green orange)
        (ontable orange)
        (clear red)
        
        (on yellow blue)
        (on blue pink)
        (ontable pink)
        (clear yellow)
        
        (ontable cyan)
        (clear cyan)

        (handempty robot1)
    )
    (:goal
        (and
            (on red green)
            (on green orange)
            (ontable orange)
            (on yellow blue)
            (on blue pink)
            (ontable pink)
            (ontable cyan)
        )
    )
)