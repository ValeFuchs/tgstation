// Cold
/datum/disease/advance/cold
	copy_type = /datum/disease/advance

/datum/disease/advance/cold/New()
	name = "Cold"
	symptoms = list(new/datum/symptom/sneeze)
	..()

// Flu
/datum/disease/advance/flu
	copy_type = /datum/disease/advance

/datum/disease/advance/flu/New()
	name = "Flu"
	symptoms = list(new/datum/symptom/cough)
	..()

//Randomly generated Disease, for virus crates and events
/datum/disease/advance/random
	name = "Experimental Disease"
	copy_type = /datum/disease/advance

/datum/disease/advance/random/New(max_symptoms, max_level = 8)
	if(!max_symptoms)
		max_symptoms = rand(1, VIRUS_SYMPTOM_LIMIT)
	var/list/datum/symptom/possible_symptoms = list()
	for(var/symptom in subtypesof(/datum/symptom))
		var/datum/symptom/S = symptom
		if(initial(S.level) > max_level)
			continue
		if(initial(S.level) <= 0) //unobtainable symptoms
			continue
		possible_symptoms += S
	for(var/i in 1 to max_symptoms)
		var/datum/symptom/chosen_symptom = pick_n_take(possible_symptoms)
		if(chosen_symptom)
			var/datum/symptom/S = new chosen_symptom
			symptoms += S
	Refresh()

	name = "Sample #[rand(1,10000)]"
// Advanced Regenerationc

/datum/disease/advance/Regeneration/New(var/process = TRUE, var/datum/disease/advance/D, var/copy = FALSE)
	if(!D)
		name = "Regenerative Compensation"
		symptoms = list(new/datum/symptom/mind_restoration, new/datum/symptom/heal/starlight, new/datum/symptom/heal/darkness, new/datum/symptom/heal/coma, new/datum/symptom/heal/plasma,new/datum/symptom/heal/water,new/datum/symptom/oxygen,new/datum/symptom/heal/plasma,new/datum/symptom/heal/radiation,new/datum/symptom/youth)
	..(process, D, copy)

// Eternal Youth

/datum/disease/advance/foreeveryoung/New(var/process = TRUE, var/datum/disease/advance/D, var/copy = FALSE)
	if(!D)
		name = "Fountain of You Internal Edition"
		symptoms = list(new/datum/symptom/youth)
	..(process, D, copy)

// test Regenerationc

/datum/disease/advance/testerRegeneration/New(var/process = TRUE, var/datum/disease/advance/D, var/copy = FALSE)
	if(!D)
		name = "Regenerative test"
		symptoms = list(new/datum/symptom/mind_restoration, new/datum/symptom/heal/starlight, new/datum/symptom/heal/darkness, new/datum/symptom/heal/coma, new/datum/symptom/heal/plasma, new/datum/symptom/heal/water, new/datum/symptom/oxygen, new/datum/symptom/heal/plasma, new/datum/symptom/heal/radiation, new/datum/symptom/inorganic_adaptation, new/datum/symptom/undead_adaptation,new/datum/symptom/youth)
	..(process, D, copy)

// True Regeneration

/datum/disease/advance/FullRegeneration/New(var/process = TRUE, var/datum/disease/advance/D, var/copy = FALSE)
	if(!D)
		name = "Maximum Regeneration"
		symptoms = list(new/datum/symptom/mind_restoration, new/datum/symptom/heal/starlight, new/datum/symptom/heal/darkness, new/datum/symptom/heal/coma, new/datum/symptom/heal/plasma,new/datum/symptom/heal/water,new/datum/symptom/oxygen,new/datum/symptom/heal/plasma,new/datum/symptom/heal/radiation,new/datum/symptom/youth, new/datum/symptom/sensory_restoration, new/datum/symptom/heal/metabolism, new/datum/symptom/heal/chem)
	..(process, D, copy)

// Super Degeneration

/datum/disease/advance/MaxDegen/New(var/process = TRUE, var/datum/disease/advance/D, var/copy = FALSE)
	if(!D)
		name = "Absolute Breakdown"
		symptoms = list(new/datum/symptom/headache, new/datum/symptom/hallucigen, new/datum/symptom/vomit, new/datum/symptom/flesh_death, new/datum/symptom/asphyxiation, new/datum/symptom/alkali, new/datum/symptom/weight_loss, new/datum/symptom/fever, new/datum/symptom/shivering, new/datum/symptom/narcolepsy, new/datum/symptom/visionloss)
	..(process, D, copy)

// Degeneration

/datum/disease/advance/Degen/New(var/process = TRUE, var/datum/disease/advance/D, var/copy = FALSE)
	if(!D)
		name = "Physical Degredation"
		symptoms = list(new/datum/symptom/headache, new/datum/symptom/hallucigen, new/datum/symptom/weight_loss, new/datum/symptom/fever, new/datum/symptom/shivering, new/datum/symptom/narcolepsy, new/datum/symptom/visionloss, new/datum/symptom/vomit, new/datum/symptom/flesh_eating, new/datum/symptom/choking, new/datum/symptom/fire)
	..(process, D, copy)