(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow orange pink cyan blue green red - block
        robot1 - robot
    )
    (:init
        (ontable pink)
        (on green pink)
        (clear green)
        
        (ontable yellow)
        (on red yellow)
        (on blue red)
        (clear blue)
        
        (ontable orange)
        (on cyan orange)
        (clear cyan)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow orange)
            (on orange pink)
            (on pink cyan)

            (on blue green)
            (on green red)
        )
    )
)