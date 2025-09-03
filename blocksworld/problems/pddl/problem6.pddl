
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red blue yellow - block
        robot1 - robot
    )
    (:init
        (ontable yellow)
        (on red yellow)
        (on blue red)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow blue)
            (ontable red)
        )
    )
)