(define (problem block_world)
    (:domain blocksworld)
    (:objects
        green blue orange yellow pink red cyan - block
        robot1 - robot
    )
    (:init
        (ontable pink)
        (on blue pink)
        (on cyan blue)
        (clear cyan)
        
        (ontable red)
        (on yellow red)
        (clear yellow)
        
        (ontable orange)
        (on green orange)
        (clear green)
        
        (handempty robot1)
    )
    (:goal
        (and
            (on green blue)
            (on blue orange)
            (ontable orange)
            
            (on yellow pink)
            (on pink red)
            (on red cyan)
            (ontable cyan)
        )
    )
)