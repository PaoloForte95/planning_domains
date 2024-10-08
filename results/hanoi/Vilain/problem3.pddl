(define (problem hanoi) 
(:domain hanoi) 
(:objects
	peg1
	peg2
	peg3
	peg4
	yellow_disk1
	green_disk1
	blue_disk1
	purple_disk1
	pink_disk1
	orange_disk1
) 
(:init
    (clear peg1)
    (clear peg4)
    (on yellow_disk1 green_disk1)
    (on green_disk1 blue_disk1)
    (on blue_disk1 purple_disk1)
    (on purple_disk1 pink_disk1)
    (on pink_disk1 orange_disk1)
    (on orange_disk1 peg2)
    (on orange_disk1 peg3)
    (smaller yellow_disk1 peg1)
    (smaller green_disk1 peg1)
    (smaller blue_disk1 peg1)
    (smaller purple_disk1 peg1)
    (smaller pink_disk1 peg1)
    (smaller orange_disk1 peg1)
    (smaller yellow_disk1 peg2)
    (smaller green_disk1 peg2)
    (smaller blue_disk1 peg2)
    (smaller purple_disk1 peg2)
    (smaller pink_disk1 peg2)
    (smaller orange_disk1 peg2)
    (smaller yellow_disk1 peg3)
    (smaller green_disk1 peg3)
    (smaller blue_disk1 peg3)
    (smaller purple_disk1 peg3)
    (smaller pink_disk1 peg3)
    (smaller orange_disk1 peg3)
    (smaller yellow_disk1 peg4)
    (smaller green_disk1 peg4)
    (smaller blue_disk1 peg4)
    (smaller purple_disk1 peg4)
    (smaller pink_disk1 peg4)
    (smaller orange_disk1 peg4)
    (smaller yellow_disk1 green_disk1)
    (smaller yellow_disk1 blue_disk1)
    (smaller yellow_disk1 purple_disk1)
    (smaller yellow_disk1 pink_disk1)
    (smaller yellow_disk1 orange_disk1)
    (smaller green_disk1 blue_disk1)
    (smaller green_disk1 purple_disk1)
    (smaller green_disk1 pink_disk1)
    (smaller green_disk1 orange_disk1)
    (smaller blue_disk1 purple_disk1)
    (smaller blue_disk1 pink_disk1)
    (smaller blue_disk1 orange_disk1)
    (smaller purple_disk1 pink_disk1)
    (smaller purple_disk1 orange_disk1)
    (smaller pink_disk1 orange_disk1)
) 
(:goal (and 
    (on orange_disk1 peg4)
    (on pink_disk1 orange_disk1)
    (on purple_disk1 pink_disk1)
    (on blue_disk1 purple_disk1)
    (on green_disk1 blue_disk1)
    (on yellow_disk1 green_disk1)
)) 
)