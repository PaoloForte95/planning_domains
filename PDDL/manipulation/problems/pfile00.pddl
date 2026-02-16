(define (problem pfile01)
	(:domain  manipulation_domain)
	(:objects
        fork knife - item
        wp1s wp2s - location
        wp1f wp2f  - location
        home1 - location 
	robot1  - robot
    	)
    	(:init
		(at robot1 home1)
		(at fork wp1s)
		(at knife wp2s)
	)
    	(:goal
		(and
		    (at fork wp1f)
		    (at knife wp2f)
		)
    	)

	
)
