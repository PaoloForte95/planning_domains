
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        cyan yellow blue purple red orange green pink robot1 - block robot
    )
    (:init
        (ontable blue)
        (on green blue)
        (on purple green)
        (on orange purple)
        (on cyan orange)
        (on yellow cyan)
        (on pink yellow)
        (clear pink)
        (ontable red)
        (clear red)
        (handempty robot1)
    )
    (:goal
        (and
            (on cyan yellow)
            (on yellow blue)
            (on blue purple)
            (ontable purple)
            (on red orange)
            (on orange green)
            (on green pink)
            (ontable pink)
        )
    )
)