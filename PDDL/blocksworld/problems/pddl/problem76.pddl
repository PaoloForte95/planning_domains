
(define (problem block_world)
    (:domain block_world)
    (:objects
        orange blue red yellow green pink cyan purple - block
        robot1 - robot
    )
    (:init
        (ontable blue)
        (clear blue)
        (ontable cyan)
        (clear cyan)
        (ontable orange)
        (clear orange)
        (ontable pink)
        (clear pink)
        (ontable red)
        (clear red)
        (ontable purple)
        (clear purple)
        (ontable green)
        (on yellow green)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange blue)
            (on blue red)
            (ontable red)
            
            (on yellow green)
            (ontable green)

            (on pink cyan)
            (on cyan purple)
            (ontable purple)
        )
    )
)