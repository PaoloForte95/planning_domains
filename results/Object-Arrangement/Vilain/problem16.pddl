(define (problem Object-Arrangement) 
(:domain Object-Arrangement) 
(:objects
) 
(:init
    (at knife wp1s)
    (at scissors wp2s)
    (at spoon wp3s)
    (at fork wp4s)
    (at spoon2 wp5s)
    (at fork2 wp6s)
    (at knife2 wp1f)
    (at knife3 wp2f)
    (at scissors2 wp3f)
    (at fork3 wp4f)
    (at knife4 out_location)
    (at fork4 out_location)
    (at spoon3 out_location)
    (at knife5 out_location)
) 
(:goal (and 
    (at knife out_location)
    (at scissors out_location)
    (at spoon wp1f)
    (at fork wp2f)
    (at spoon2 wp3f)
    (at fork2 wp4f)
    (at knife2 out_location)
    (at knife3 out_location)
    (at scissors2 out_location)
    (at fork3 out_location)
    (at knife4 out_location)
    (at fork4 out_location)
    (at spoon3 out_location)
    (at knife5 out_location)
)) 
)