
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        green pink blue cyan red yellow orange - block
        robot1 - robot
    )
    (:init
        (on green pink)
        (on pink blue)
        (ontable blue)
        (ontable cyan)
        (ontable red)
        (ontable yellow)
        (ontable orange)
        (clear green)
        (clear cyan)
        (clear red)
        (clear yellow)
        (clear orange)
        (handempty robot1)
    )
    (:goal
        (and
            (on orange yellow)
            (on yellow red)
            (on red blue)
            (on blue pink)
            (on pink cyan)
            (on cyan green)
            (ontable green)
            (clear orange)
        )
    )
)