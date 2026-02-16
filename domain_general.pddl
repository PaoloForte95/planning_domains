(define (domain domain_pddl)
	(:requirements :negative-preconditions :typing :universal-preconditions)
	(:types
		locatable - object
		location  - object
		robot - locatable
		item - locatable
	)
	(:predicates
		(in ?arg0 - locatable ?arg1 - locatable)
		(at ?arg0 - locatable ?arg1 - location)
		(on ?arg0 - locatable ?arg1 - locatable)
		(free ?arg1 - location)
	)

	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ACTION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	(:action drive
		:parameters (?v - robot ?l1 - location ?l2 - location)
		:precondition 
			(and
				(at ?v ?l1)
				(free ?l2)
				(forall (?m - item)
						(not (in ?m ?v))
				)
				
			)
		:effect
			(and
				(not (at ?v ?l1))
				(at ?v ?l2)
				(free ?l1)
				(not (free ?l2))
			)
	)

	(:action transport
		:parameters (?v - robot ?l1 - location ?l2 - location ?m - item)
		:precondition 
			(and
				(at ?v ?l1)
				(free ?l2)
				(in ?m ?v)
			)
		:effect
			(and
				(not (at ?v ?l1))
				(at ?v ?l2)
				(free ?l1)
				(not (free ?l2))
			)
	)

	(:action noop
		:parameters (?v - robot ?l2 - location)
		:precondition 
			(and
				(at ?v ?l2)
			)
		:effect ()
	)


	(:action pick
		:parameters (?v - robot ?l - location ?m - item)
		:precondition 
			(and
				(at ?v ?l)
				(can_load ?v)
				(at ?m ?l)
				(forall (?m2 - item)
						(not (on ?m2 ?m))
				)
			)
		:effect
			(and
				(in ?m ?v)
				(not (at ?m ?l))
			)
	)

	(:action place
		:parameters (?v - robot ?l - location ?m - item)
		:precondition 
			(and
				(at ?v ?l)
				(in ?m ?v)
				(forall (?m2 - item)
					(not (at ?m2 ?l))
				)
			)
		:effect
			(and
				(not (in ?m ?v))
				(at ?m ?l)
			)
	)

	(:action stack
		:parameters (?v - robot ?l - location ?m1 - item ?m2 - item)
		:precondition 
			(and
				(at ?v ?l)
				(in ?m1 ?v)
				(at ?m2 ?l)
			)
		:effect
			(and
				(not (in ?m1 ?v))
				(at ?m1 ?l)
				(on ?m1 ?m2)
			)
	)

	(:action unstack
		:parameters (?v - robot ?l - location ?m1 - item ?m2 - item)
		:precondition 
			(and
				(at ?v ?l)
				(at ?m2 ?l)
				(at ?m1 ?l)
				(forall (?m3 - item)
					(not (on ?m3 ?m1))
				)
				(on ?m1 ?m2)
			)
		:effect
			(and
				(not (on ?m1 ?m2))
				(in ?m1 ?v)
				(not (at ?m1 ?l))
			)
	)

)
