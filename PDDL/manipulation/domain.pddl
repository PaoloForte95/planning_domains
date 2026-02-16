(define (domain manipulation_domain)
	(:requirements :strips :typing :fluents :negative-preconditions)
	(:types
		location - object
		locatable - object
		item - locatable
		robot  - locatable
		container - item
		food - item
	)

	(:predicates
		(in ?arg0 - item ?arg1 - robot)
		(at ?arg0 - locatable ?arg1 - location)
		(on ?arg0 - item ?arg1 - item)
	)

	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ACTIONS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	(:action go
		:parameters (?r - robot ?l1 - location ?l2 - location)
		:precondition 
			(and
				(at ?r ?l1)
			)
		:effect
			(and
				(not (at ?r ?l1))
				(at ?r ?l2)
			)
	)


	(:action place
		:parameters (?r - robot ?o - item ?l - location )
		:precondition 
			(and
				(at ?r ?l)
				(in ?o ?r)
			)
		:effect
			(and
				(not (in ?o ?r))
				(at ?o ?l)
			)
	)

	(:action put_on_container
		:parameters (?r - robot ?o1 - item ?c - container ?l - location)
		:precondition 
			(and
				(at ?r ?l)
				(in ?o1 ?r)
				(at ?c ?l)
			)
		:effect
			(and
				(not (in ?o1 ?r))
				(at ?o1 ?l)
				(on ?o1 ?c)
			)
	)


	(:action pick
		:parameters (?r - robot ?o - item ?l - location )
		:precondition 
			(and
				(at ?r ?l)
				(at ?o ?l)
				(forall (?o2 - item)
						(not (on ?o2 ?o))
				)
			)
		:effect
			(and
				(in ?o ?r)
				(not (at ?o ?l))
			)
	)

	(:action unstack
		:parameters (?r - robot ?o1 - item ?o2 - item ?l - location )
		:precondition 
			(and
				(at ?r ?l)
				(at ?o2 ?l)
				(at ?o1 ?l)
				(forall (?o3 - item)
					(not (on ?o3 ?o1))
				)
				(on ?o1 ?o2)
			)
		:effect
			(and
				(not (on ?o1 ?o2))
				(in ?o1 ?r)
				(not (at ?o1 ?l))
			)
	)


)
