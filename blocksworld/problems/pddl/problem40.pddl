
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow orange purple green red - block
        robot1 - robot
    )
    (:init
        (on yellow orange)
        (on orange purple)
        (ontable purple)
        (clear yellow)
        
        (on green red)
        (ontable red)
        (clear green)
        
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow orange)
            (on orange purple)
            (ontable purple)
            
            (on green red)
            (ontable red)
        )
    )
)