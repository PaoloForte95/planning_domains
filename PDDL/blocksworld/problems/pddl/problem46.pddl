
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red yellow green orange purple pink robot1 - block robot
    )
    (:init
        (on yellow green)
        (ontable green)
        (clear yellow)

        (on red pink)
        (ontable pink)
        (clear red)

        (on orange purple)
        (ontable purple)
        (clear orange)

        (handempty robot1)
    )
    (:goal
        (and
            (on red purple)
            (on purple yellow)
            (on yellow orange)
            (on orange pink)
            (on pink green)
            (ontable green)
            (clear red)
        )
    )
)