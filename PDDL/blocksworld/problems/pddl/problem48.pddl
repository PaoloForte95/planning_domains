
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red orange green pink yellow purple - block
        robot1 - robot
    )
    (:init
        (on red orange)
        (on orange green)
        (on green pink)
        (on pink yellow)
        (ontable yellow)
        (ontable purple)
        (clear red)
        (clear purple)
        (handempty robot1)
    )
    (:goal
        (and
            (on green yellow)
            (on yellow red)
            (on red purple)
            (ontable purple)
            (on orange pink)
            (ontable pink)
        )
    )
)