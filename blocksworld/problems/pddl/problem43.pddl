(define (problem block_world)
    (:domain blocksworld)
    (:objects
        pink yellow orange purple red - block
        robot1 - robot
    )
    (:init
        (ontable pink)
        (clear pink)
        (ontable yellow)
        (clear yellow)
        (ontable orange)
        (on purple orange)
        (on red purple)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow pink)
            (ontable pink)
            (on red purple)
            (ontable purple)
            (clear red)
            (clear orange)
        )
    )
)