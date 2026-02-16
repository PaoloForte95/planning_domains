
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        cyan orange blue pink green red yellow purple - block
        robot1 - robot
    )
    (:init
        (ontable cyan)
        (ontable orange)
        (ontable blue)
        (ontable pink)
        (ontable green)
        (ontable red)
        (ontable yellow)
        (ontable purple)
        (clear cyan)
        (clear orange)
        (clear blue)
        (clear pink)
        (clear green)
        (clear red)
        (clear yellow)
        (clear purple)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow green)
            (on green blue)
            (ontable blue)
            (clear orange)
            
            (on pink red)
            (on red purple)
            (on purple cyan)
            (ontable cyan)
            (clear pink)
        )
    )
)