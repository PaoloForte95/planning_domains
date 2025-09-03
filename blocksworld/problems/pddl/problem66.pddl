(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red yellow green orange blue pink cyan - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (on pink red)
        (clear pink)
        (ontable yellow)
        (on blue yellow)
        (clear blue)
        (ontable green)
        (on cyan green)
        (clear cyan)
        (ontable orange)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange green)
            (on green yellow)
            (on yellow red)
            (ontable red)
            (clear orange)
            (on cyan blue)
            (on blue pink)
            (ontable pink)
            (clear cyan)
        )
    )
)