(define (problem block_world)
    (:domain blocksworld)
    (:objects
        yellow green orange - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (ontable green)
        (ontable orange)
        (clear yellow)
        (clear green)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow green)
            (on green orange)
        )
    )
)