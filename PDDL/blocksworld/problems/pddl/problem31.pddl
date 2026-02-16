
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        yellow red orange pink purple - block
        robot - robot
    )
    (:init
        (ontable yellow)
        (ontable red)
        (on orange red)
        (on pink yellow)
        (on purple pink)
        (clear purple)
        (clear orange)
        (handempty robot)
    )
    (:goal
        (and
            (on yellow red)
            (ontable red)
            (on purple pink)
            (on pink orange)
            (ontable orange)
        )
    )
)