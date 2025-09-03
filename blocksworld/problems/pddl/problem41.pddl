
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        green orange blue red yellow - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (ontable orange)
        (ontable blue)
        (ontable red)
        (ontable yellow)
        (clear green)
        (clear orange)
        (clear blue)
        (clear red)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on blue orange)
            (on orange green)
            (ontable green)
            (clear blue)

            (on yellow red)
            (ontable red)
            (clear yellow)
        )
    )
)