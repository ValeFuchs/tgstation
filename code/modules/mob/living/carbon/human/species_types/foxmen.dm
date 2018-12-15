/datum/species/fox
	// Fox people.
	name = "Foxperson"
	id = "fox"
	default_color = "FF4D00"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS)
	inherent_biotypes = list(MOB_ORGANIC, MOB_HUMANOID)
	mutant_bodyparts = list("tail_fox")
	default_features = list("tail_fox" = "Fox")
	mutanttail = /obj/item/organ/tail/fox
	coldmod = 0.5
	heatmod = 1.2
	default_features = list("mcolor" = "FFF", "tail_fox" = "Fox")
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	//meat = /obj/item/reagent_containers/food/snacks/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = GROSS | FRUIT
	liked_food = DAIRY | MEAT | FRIED | JUNKFOOD

/datum/species/fox/regenerate_organs(mob/living/carbon/C,datum/species/old_species,replace_current=TRUE)
	. = ..()
	if(ishuman(C))
		var/mob/living/carbon/human/H = C
		handle_mutant_bodyparts(H)

///datum/species/fox/random_name(gender,unique,lastname)
//	if(unique)
//		return random_unique_fox_name(gender)
//
//	var/randname = fox_name(gender)

//	if(lastname)
//		randname += " [lastname]"

//	return randname

/datum/species/fox/qualifies_for_rank(rank, list/features)
	return TRUE

//I wag in death
//datum/species/lizard/spec_death(gibbed, mob/living/carbon/human/H)
	//if(H)
		//stop_wagging_tail(H)

//datum/species/lizard/spec_stun(mob/living/carbon/human/H,amount)
	//if(H)
		//stop_wagging_tail(H)
	//. = ..()

///datum/species/lizard/can_wag_tail(mob/living/carbon/human/H)
	//return ("tail_lizard" in mutant_bodyparts) || ("waggingtail_lizard" in mutant_bodyparts)

///datum/species/lizard/is_wagging_tail(mob/living/carbon/human/H)
	//return ("waggingtail_lizard" in mutant_bodyparts)

///datum/species/lizard/start_wagging_tail(mob/living/carbon/human/H)
	//if("tail_lizard" in mutant_bodyparts)
		//mutant_bodyparts -= "tail_lizard"
		//mutant_bodyparts -= "spines"
		//mutant_bodyparts |= "waggingtail_lizard"
		//mutant_bodyparts |= "waggingspines"
	//H.update_body()

//datum/species/lizard/stop_wagging_tail(mob/living/carbon/human/H)
	//if("waggingtail_lizard" in mutant_bodyparts)
		//mutant_bodyparts -= "waggingtail_lizard"
		//mutant_bodyparts -= "waggingspines"
		//mutant_bodyparts |= "tail_lizard"
		//mutant_bodyparts |= "spines"
	//H.update_body()

/*
 Lizard subspecies: ASHWALKERS
*/
///datum/species/lizard/ashwalker
	//name = "Ash Walker"
	//id = "ashlizard"
	//limbs_id = "lizard"
	//species_traits = list(MUTCOLORS,EYECOLOR,LIPS,DIGITIGRADE)
	//inherent_traits = list(TRAIT_NOGUNS,TRAIT_NOBREATH)
