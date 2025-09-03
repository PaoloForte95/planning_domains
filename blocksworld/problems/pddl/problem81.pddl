(define (problem block_world)
    (:domain block_world)
    (:objects
        blue orange pink yellow cyan red purple green robot - block
        r1 - robot
    )
    (:init
        (ontable blue)
        (ontable pink)
        (ontable cyan)
        (ontable red)
        (ontable purple)
        (ontable orange)
        (ontable yellow)
        (ontable green)
        (clear orange)
        (clear yellow)
        (clear purple)
        (clear green)
        (clear blue)
        (clear pink)
        (clear cyan)
        (clear red)
        (handempty r1)
    )
    (:goal
        (and
            (on yellow blue)
            (on blue orange)
            (ontable orange)

            (on green pink)
            (ontable pink)

            (on purple red)
            (on red cyan)
            (ontable cyan)
        )
    )
)