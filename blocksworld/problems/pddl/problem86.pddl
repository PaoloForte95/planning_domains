
(define (problem block_world)
    (:domain blocksworld)
    (:objects
        purple red orange green blue pink cyan yellow - block
        robot1 - robot
    )
    (:init
        (ontable purple)
        (on red purple)
        (on yellow red)
        (ontable orange)
        (ontable blue)
        (ontable green)
        (ontable pink)
        (ontable cyan)
        (clear yellow)
        (clear orange)
        (clear blue)
        (clear green)
        (clear pink)
        (clear cyan)
        (handempty robot1)
    )
    (:goal
        (and
            (on blue pink)
            (on pink green)
            (on green orange)
            (on orange red)
            (on red purple)
            (ontable purple)
            (clear blue)
            (on cyan yellow)
            (ontable yellow)
            (clear cyan)
        )
    )
)