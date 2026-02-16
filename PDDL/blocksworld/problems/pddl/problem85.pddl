
(define (problem block_world)
    (:domain block_world)
    (:objects
        red pink blue orange yellow purple cyan green - block
        robot1 - robot
    )
    (:init
        (on red purple)
        (ontable purple)
        (clear red)

        (on yellow orange)
        (ontable orange)
        (clear yellow)

        (on blue green)
        (ontable green)
        (clear blue)
        
        (on pink cyan)
        (ontable cyan)
        (clear pink)

        (handempty robot1)
    )
    (:goal
        (and
            (on red pink)
            (on pink blue)
            (on blue orange)
            (ontable orange)
            (clear red)

            (on yellow purple)
            (on purple cyan)
            (on cyan green)
            (ontable green)
            (clear yellow)
        )
    )
)