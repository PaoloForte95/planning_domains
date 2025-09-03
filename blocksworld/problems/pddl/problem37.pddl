
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        orange yellow green purple red pink - block
        robot1 - robot
    )
    (:init
        (on orange pink)
        (ontable pink)
        (clear orange)
        
        (ontable green)
        (clear green)
        
        (on purple yellow)
        (ontable yellow)
        (clear purple)
        
        (ontable red)
        (clear red)
        
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow green)
            (ontable green)

            (on purple red)
            (on red pink)
            (ontable pink)
        )
    )
)