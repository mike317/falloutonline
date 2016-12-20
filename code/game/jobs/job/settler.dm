/*
Settler
*/
/datum/job/settler
	title = "Settler"
	flag = SETTLER
	department_flag = CIVILIAN
	faction = "Desert" //desert faction shall disable appearing as scavenger after readying
	total_positions = -1
	spawn_positions = -1 //does not matter for late join
	supervisors = "nobody"
	selection_color = "#dddddd"
	access = list()
	minimal_access = list()
	outfit = /datum/outfit/job/settler

/datum/outfit/job/settler
	name = "Settler"
	id = null
	ears = null
	belt = null
	backpack = null
	satchel = null

/datum/outfit/job/settler/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(/obj/item/clothing/under/f13/settler,\
		/obj/item/clothing/under/f13/brahmin,\
		/obj/item/clothing/under/f13/machinist,\
		/obj/item/clothing/under/f13/lumberjack,\
		/obj/item/clothing/under/f13/roving)
	if (prob(50))
		glasses = /obj/item/clothing/glasses/sunglasses
	if (prob(80))
		l_hand = pick(/obj/item/weapon/kitchen/knife)


	if (prob(100))
		back = /obj/item/weapon/storage/backpack
		backpack = /obj/item/weapon/storage/backpack
		satchel = /obj/item/weapon/storage/backpack/satchel_norm
		backpack_contents = pick(list(/obj/item/device/analyzer/plant_analyzer = 1), \
			list(/obj/item/stack/cable_coil = 1), \
			list(/obj/item/stack/sheet/mineral/wood = 1), \
			list(/obj/item/stack/sheet/mineral/sandstone = 1))