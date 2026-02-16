(define (problem block_world)
    (:domain blocksworld)
    (:objects
        blue purple orange red green - block
        robot1 - robot
    )
    (:init
        (ontable blue)
        (on purple blue)
        (clear purple)
        
        (ontable orange)
        (clear orange)

        (ontable red)
        (on green red)
        (clear green)

        (handempty robot1)
    )
    (:goal
        (and
            (on green red)
            (on red orange)
            (on orange purple)
            (on purple blue)
        )
    )
)