
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        orange purple pink red - block
        robot1 - robot
    )
    (:init
        (on orange purple)
        (ontable purple)
        (clear orange)
        (ontable pink)
        (on red pink)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange purple)
            (on purple pink)
            (on pink red)
        )
    )
)