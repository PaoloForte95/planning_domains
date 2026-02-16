(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red green orange purple blue yellow pink cyan - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable purple)
        (ontable green)
        (on blue green)
        (on orange blue)
        (on yellow orange)
        (on cyan yellow)
        (on pink cyan)
        (clear red)
        (clear purple)
        (clear pink)
        (handempty robot1)
    )
    (:goal
        (and
            (on red green)
            (on green orange)
            (on orange purple)
            (on blue yellow)
            (on yellow pink)
            (on pink cyan)
        )
    )
)