(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow blue green orange pink red cyan purple robot1 - block
        robot - robot
    )
    (:init
        (ontable pink)
        (clear pink)
        
        (ontable yellow)
        (on red yellow)
        (clear red)
        
        (ontable purple)
        (on blue purple)
        (on cyan blue)
        (on green cyan)
        (on orange green)
        (clear orange)

        (handempty robot)
    )
    (:goal
        (and
            (on yellow blue)
            (on blue green)
            (on orange pink)
            (on pink red)
            (on cyan purple)
        )
    )
)