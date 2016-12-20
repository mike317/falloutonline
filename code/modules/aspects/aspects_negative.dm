/decl/aspect/negative
	name = ASPECT_HAEMOPHILE
	desc = "You're a bleeder."
	use_icon_state = "melee_2"
	aspect_cost = -1
	category = "Maluses"

/decl/aspect/negative/fragile
	name = ASPECT_FRAGILE
	desc = "You are a delicate flower."
	apply_post_species_change = 1

/decl/aspect/negative/fragile/do_post_spawn(var/mob/living/carbon/human/holder)
	if(!istype(holder))
		return
	holder.maxHealth -= (holder.species.total_health * 0.2)

/* Uncomment this when there's actually a negative aspect to it.
/decl/aspect/negative/uncanny
	name = ASPECT_UNCANNY
	desc = "There's something about you that makes people uneasy."
*/

