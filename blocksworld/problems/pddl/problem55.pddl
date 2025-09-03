
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        orange yellow pink green cyan blue red - block
        robot1 - robot
    )
    (:init
        (ontable blue)
        (on blue cyan)
        (ontable cyan)
        (ontable pink)
        (ontable red)
        (ontable yellow)
        (ontable orange)
        (ontable green)
        (clear orange)
        (clear yellow)
        (clear pink)
        (clear green)
        (clear blue)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow pink)
            (ontable pink)
            (on green cyan)
            (on cyan blue)
            (on blue red)
            (ontable red)
            (clear orange)
            (clear green)
        )
    )
)