(define (problem hanoi) 
(:domain hanoi) 
(:objects
	peg1
	peg2
	peg3
	orange_disk1
	yellow_disk1
	purple_disk1
	pink_disk1
	green_disk1
	blue_disk1
	pink_disk2
	orange_disk2
) 
(:init
    (clear peg1)
    (clear peg2)
    (clear peg3)
    (on orange_disk1 yellow_disk1)
    (on yellow_disk1 purple_disk1)
    (on purple_disk1 pink_disk1)
    (on pink_disk1 green_disk1)
    (on green_disk1 blue_disk1)
    (on blue_disk1 pink_disk2)
    (on pink_disk2 orange_disk2)
    (smaller orange_disk1 peg1)
    (smaller yellow_disk1 peg1)
    (smaller purple_disk1 peg1)
    (smaller pink_disk1 peg1)
    (smaller green_disk1 peg1)
    (smaller blue_disk1 peg1)
    (smaller pink_disk2 peg1)
    (smaller orange_disk2 peg1)
    (smaller orange_disk1 peg2)
    (smaller yellow_disk1 peg2)
    (smaller purple_disk1 peg2)
    (smaller pink_disk1 peg2)
    (smaller green_disk1 peg2)
    (smaller blue_disk1 peg2)
    (smaller pink_disk2 peg2)
    (smaller orange_disk2 peg2)
    (smaller orange_disk1 peg3)
    (smaller yellow_disk1 peg3)
    (smaller purple_disk1 peg3)
    (smaller pink_disk1 peg3)
    (smaller green_disk1 peg3)
    (smaller blue_disk1 peg3)
    (smaller pink_disk2 peg3)
    (smaller orange_disk2 peg3)
    (smaller orange_disk1 yellow_disk1)
    (smaller orange_disk1 purple_disk1)
    (smaller orange_disk1 pink_disk1)
    (smaller orange_disk1 green_disk1)
    (smaller orange_disk1 blue_disk1)
    (smaller orange_disk1 pink_disk2)
    (smaller orange_disk1 orange_disk2)
    (smaller yellow_disk1 purple_disk1)
    (smaller yellow_disk1 pink_disk1)
    (smaller yellow_disk1 green_disk1)
    (smaller yellow_disk1 blue_disk1)
    (smaller yellow_disk1 pink_disk2)
    (smaller yellow_disk1 orange_disk2)
    (smaller purple_disk1 pink_disk1)
    (smaller purple_disk1 green_disk1)
    (smaller purple_disk1 blue_disk1)
    (smaller purple_disk1 pink_disk2)
    (smaller purple_disk1 orange_disk2)
    (smaller pink_disk1 green_disk1)
    (smaller pink_disk1 blue_disk1)
    (smaller pink_disk1 pink_disk2)
    (smaller pink_disk1 orange_disk2)
    (smaller green_disk1 blue_disk1)
    (smaller green_disk1 pink_disk2)
    (smaller green_disk1 orange_disk2)
    (smaller blue_disk1 pink_disk2)
    (smaller blue_disk1 orange_disk2)
    (smaller pink_disk2 orange_disk2)
) 
(:goal (and 
    (on orange_disk2 peg3)
    (on pink_disk2 orange_disk2)
    (on blue_disk1 pink_disk2)
    (on green_disk1 blue_disk1)
    (on pink_disk1 green_disk1)
    (on purple_disk1 pink_disk1)
    (on yellow_disk1 purple_disk1)
    (on orange_disk1 yellow_disk1)
)) 
)
