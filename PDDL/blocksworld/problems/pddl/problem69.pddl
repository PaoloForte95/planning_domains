
(define (problem block_world)
    (:domain block_world)
    (:objects
        orange blue red yellow green pink cyan - block
        robot1 - robot
    )
    (:init
        (on orange blue)
        (on blue red)
        (on red yellow)
        (on yellow green)
        (on green pink)
        (on pink cyan)
        (ontable cyan)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange blue)
            (on blue red)
            (on red yellow)
            (on yellow green)
            (on green pink)
            (on pink cyan)
            (ontable cyan)
            (clear orange)
        )
    )
)