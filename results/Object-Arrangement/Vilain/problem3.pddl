(define (problem Object-Arrangement) 
(:domain Object-Arrangement) 
(:objects
) 
(:init
    (at fork wp1s)
    (at glass wp2s)
    (at mug wp3s)
    (at pear wp4s)
    (at cup wp5s)
    (at banana wp6s)
    (at plate wp1f)
    (at bowl wp2f)
    (at knife wp3f)
) 
(:goal (and 
    (at fork out_location)
    (at glass out_location)
    (at mug out_location)
    (at pear plate)
    (at cup out_location)
    (at banana out_location)
    (at plate wp1f)
    (at bowl wp2f)
    (at knife wp3f)
)) 
)
