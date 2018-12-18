/datum/species/blaf
	// Blafs
	name = "Shahrubah"
	id = "blaf"
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,LIPS)
	inherent_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	mutant_bodyparts = list("tail_blaf")
	default_features = list("tail_blaf" = "Shahrubah")
	mutanttail = /obj/item/organ/tail/blaf
	coldmod = 1.2
	heatmod = 0.02
	default_features = list("tail_blaf" = "Shahrubah")
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	//meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = GROSS
	liked_food = DAIRY | MEAT | FRIED | JUNKFOOD

/datum/species/blaf/regenerate_organs(mob/living/carbon/C,datum/species/old_species,replace_current=TRUE)
	. = ..()
	if(ishuman(C))
		var/mob/living/carbon/human/H = C
		handle_mutant_bodyparts(H)

/datum/species/blaf/qualifies_for_rank(rank, list/features)
	return TRUE

