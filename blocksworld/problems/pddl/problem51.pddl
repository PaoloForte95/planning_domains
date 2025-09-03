(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red blue yellow orange green pink - block
        robot1 - robot
    )
    (:init
        (ontable pink)
        (ontable blue)
        (ontable red)
        (ontable yellow)
        (ontable orange)
        (on green orange)
        (clear pink)
        (clear blue)
        (clear red)
        (clear yellow)
        (clear green)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow blue)
            (on blue orange)
            (on orange red)
            (ontable red)
            (on green pink)
            (ontable pink)
            (clear yellow)
            (clear green)
        )
    )
)