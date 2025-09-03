
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        pink yellow orange green cyan blue red purple robot - block
        robot1 - robot
    )
    (:init
        (on pink yellow)
        (ontable yellow)
        (clear pink)
        (clear green)
        (on green orange)
        (ontable orange)
        (clear purple)
        (ontable purple)
        (clear cyan)
        (on cyan blue)
        (on blue red)
        (ontable red)
        (handempty robot1)
    )
    (:goal
        (and
            (on purple red)
            (on red blue)
            (on blue cyan)
            (on cyan green)
            (ontable green)
            (on pink yellow)
            (on yellow orange)
            (ontable orange)
        )
    )
)