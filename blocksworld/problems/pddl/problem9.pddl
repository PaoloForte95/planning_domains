
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        pink green purple yellow - block
        robot1 - robot
    )
    (:init
        (on pink green)
        (ontable green)
        (ontable purple)
        (ontable yellow)
        (clear pink)
        (clear purple)
        (clear yellow)
        (handempty robot1)
    )
    (:goal
        (and
            (on yellow purple)
            (on purple green)
            (ontable pink)
        )
    )
)