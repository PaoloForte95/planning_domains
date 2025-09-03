
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        blue pink orange green yellow red cyan - block
        robot1 - robot
    )
    (:init
        (ontable cyan)
        (ontable pink)
        (ontable blue)
        (ontable red)
        (ontable yellow)
        (ontable orange)
        (ontable green)
        (clear cyan)
        (clear pink)
        (clear blue)
        (clear red)
        (clear yellow)
        (clear orange)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on blue orange)
            (on orange pink)
            (ontable pink)
            (clear blue)
            
            (on green yellow)
            (on yellow red)
            (on red cyan)
            (ontable cyan)
            (clear green)
        )
    )
)