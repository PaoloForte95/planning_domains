(define (problem Object-Arrangement) 
(:domain Object-Arrangement) 
(:objects
) 
(:init
    (at knife wp1s)
    (at spoon wp2s)
    (at fork wp3s)
    (at spoon2 wp4s)
    (at fork2 wp5s)
    (at knife2 wp6s)
    (at knife3 wp1f)
    (at fork3 wp2f)
    (at knife4 wp3f)
    (at fork4 wp4f)
    (at spoon3 out_location)
    (at knife5 out_location)
) 
(:goal (and 
    (at knife out_location)
    (at spoon out_location)
    (at fork out_location)
    (at spoon2 out_location)
    (at fork2 out_location)
    (at knife2 out_location)
    (at knife3 wp1s)
    (at fork3 wp2s)
    (at knife4 wp3s)
    (at fork4 wp4s)
    (at spoon3 wp5s)
    (at knife5 wp6s)
)) 
)