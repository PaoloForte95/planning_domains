(define (problem block_world)
    (:domain blocksworld)
    (:objects
        green yellow orange red - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (on green yellow)
        (clear green)
        (ontable orange)
        (on red orange)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange red)
            (on red yellow)
            (on yellow green)
            (ontable green)
        )
    )
)