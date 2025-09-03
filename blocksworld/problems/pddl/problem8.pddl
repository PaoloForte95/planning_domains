
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        green pink purple yellow - block
        robot1 - robot
    )
    (:init
        (ontable green)
        (ontable pink)
        (ontable purple)
        (ontable yellow)
        (clear green)
        (clear pink)
        (clear purple)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on green pink)
            (on pink purple)
            (on purple yellow)
        )
    )
)