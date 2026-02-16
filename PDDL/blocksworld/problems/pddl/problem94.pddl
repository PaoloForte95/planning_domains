
(define (problem block_world)
    (:domain block_world)
    (:objects
        yellow pink orange purple green blue cyan red - block
        robot1 - robot
    )
    (:init
        (on pink cyan)
        (on cyan blue)
        (on blue orange)
        (ontable orange)
        (clear yellow)
        (on yellow pink)

        (on green yellow2)
        (on yellow2 purple)
        (on purple red)
        (ontable red)
        (clear green)

        (handempty robot1)
    )
    (:goal
        (and
            (on yellow pink)
            (on pink cyan)
            (on cyan blue)
            (ontable orange)
            (on green yellow2)
            (on yellow2 purple)
            (on purple red)
            (ontable red)
        )
    )
)

**Note:**  
- If you want to use "yellow", "yellow2" as unique, change "yellow2" in object list and conditions.  
- Otherwise, replace "yellow2" with the correct block name/color if you wish to keep all unique block names.