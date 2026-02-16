(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red orange pink purple green yellow - block
        robot1 - robot
    )
    (:init
        (on red orange)
        (on orange purple)
        (on purple pink)
        (on pink yellow)
        (on yellow green)
        (ontable green)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on red orange)
            (on orange pink)
            (ontable pink)
            (on purple green)
            (on green yellow)
            (ontable yellow)
        )
    )
)