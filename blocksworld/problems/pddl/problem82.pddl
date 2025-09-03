(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow red green pink orange cyan purple blue - block
        robot1 - robot
    )
    (:init
        (on blue orange)
        (ontable orange)
        (clear blue)

        (on cyan pink)
        (ontable pink)
        (clear cyan)
        
        (ontable yellow)
        (clear yellow)

        (ontable purple)
        (clear purple)

        (on red green)
        (ontable green)
        (clear red)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow red)
            (on red green)
            (ontable green)
            (on pink orange)
            (ontable orange)
            (on cyan purple)
            (on purple blue)
            (ontable blue)
        )
    )
)