
(define (problem block_world)
    (:domain block_world)
    (:objects
        pink blue cyan yellow red orange green - block
        robot1 - robot
    )
    (:init
        (ontable pink)
        (on blue pink)
        (on cyan blue)
        (on yellow cyan)
        (ontable red)
        (ontable orange)
        (ontable green)
        (clear yellow)
        (clear red)
        (clear orange)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange green)
            (on green pink)
            (on pink cyan)
            (on yellow blue)
            (on blue red)
        )
    )
)