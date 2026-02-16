
(define (problem block_world)
    (:domain block_world)
    (:objects
        blue pink orange green yellow red purple cyan robot1 - block robot
    )
    (:init
        (on blue pink)
        (on pink orange)
        (ontable orange)
        (clear blue)
        
        (on green yellow)
        (on yellow red)
        (ontable red)
        (clear green)

        (on purple cyan)
        (ontable cyan)
        (clear purple)

        (handempty robot1)
    )
    (:goal
        (and
            (on blue pink)
            (on pink orange)
            (ontable orange)
            (on green yellow)
            (on yellow red)
            (ontable red)
            (on purple cyan)
            (ontable cyan)
        )
    )
)