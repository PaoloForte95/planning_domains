(define (problem block_world)
    (:domain blocksworld)
    (:objects
        red yellow purple green pink cyan orange blue - block
        robot1 - robot
    )
    (:init
        (ontable red)
        (ontable yellow)
        (ontable purple)
        (ontable green)
        (ontable pink)
        (ontable cyan)
        (on orange cyan)
        (on blue orange)
        (clear red)
        (clear yellow)
        (clear purple)
        (clear green)
        (clear pink)
        (clear blue)
        (handempty robot1)
    )
    (:goal
        (and
            (on blue cyan)
            (on cyan green)
            (on green purple)
            (on purple red)
            (ontable red)

            (on pink orange)
            (on orange yellow)
            (ontable yellow)
        )
    )
)