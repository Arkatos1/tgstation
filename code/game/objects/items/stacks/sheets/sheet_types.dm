/* Diffrent misc types of sheets
 * Contains:
 * Metal
 * Plasteel
 * Wood
 * Cloth
 * Plastic
 * Cardboard
 * Paper Frames
 * Runed Metal (cult)
 * Bronze (bake brass)
 */

/*
 * Metal
 */
GLOBAL_LIST_INIT(metal_recipes, list ( \
	new/datum/stack_recipe("stool", CATEGORY_FURNITURE, /obj/structure/chair/stool, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("bar stool", CATEGORY_FURNITURE, /obj/structure/chair/stool/bar, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("bed", CATEGORY_FURNITURE, /obj/structure/bed, 2, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("dark office chair", CATEGORY_FURNITURE, /obj/structure/chair/office, 5, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("light office chair", CATEGORY_FURNITURE, /obj/structure/chair/office/light, 5, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("beige comfy chair", CATEGORY_FURNITURE, /obj/structure/chair/comfy/beige, 2, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("black comfy chair", CATEGORY_FURNITURE, /obj/structure/chair/comfy/black, 2, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("brown comfy chair", CATEGORY_FURNITURE, /obj/structure/chair/comfy/brown, 2, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("lime comfy chair", CATEGORY_FURNITURE, /obj/structure/chair/comfy/lime, 2, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("teal comfy chair",  CATEGORY_FURNITURE,/obj/structure/chair/comfy/teal, 2, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("sofa (middle)", CATEGORY_FURNITURE, /obj/structure/chair/sofa, 1, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("sofa (left)", CATEGORY_FURNITURE, /obj/structure/chair/sofa/left, 1, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("sofa (right)", CATEGORY_FURNITURE, /obj/structure/chair/sofa/right, 1, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("sofa (corner)", CATEGORY_FURNITURE, /obj/structure/chair/sofa/corner, 1, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("rack parts", CATEGORY_GENERAL, /obj/item/rack_parts), \
	new/datum/stack_recipe("closet", CATEGORY_GENERAL, /obj/structure/closet, 2, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("canister frame", CATEGORY_CONSTRUCTION, /obj/structure/canister_frame/machine/frame_tier_0, 5, time = 8, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("floor tile", CATEGORY_CONSTRUCTION, /obj/item/stack/tile/plasteel, 1, 4, 20), \
	new/datum/stack_recipe("metal rod", CATEGORY_CONSTRUCTION, /obj/item/stack/rods, 1, 2, 60), \
	new/datum/stack_recipe("wall girders", CATEGORY_CONSTRUCTION, /obj/structure/girder, 2, time = 40, one_per_turf = TRUE, on_floor = TRUE, trait_booster = TRAIT_QUICK_BUILD, trait_modifier = 0.75), \
	new/datum/stack_recipe("computer frame", CATEGORY_CONSTRUCTION, /obj/structure/frame/computer, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("modular console", CATEGORY_CONSTRUCTION, /obj/machinery/modular_computer/console/buildable/, 10, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("machine frame", CATEGORY_CONSTRUCTION, /obj/structure/frame/machine, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("standard airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("public airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_public, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("command airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_com, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("security airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_sec, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("engineering airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_eng, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("mining airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_min, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("atmospherics airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_atmo, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("research airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_research, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("freezer airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_fre, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("science airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_science, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("medical airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_med, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("virology airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_viro, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("maintenance airlock assembly", CATEGORY_CONSTRUCTION,/obj/structure/door_assembly/door_assembly_mai, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("external airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_ext, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("external maintenance airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_extmai, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("airtight hatch assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_hatch, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("maintenance hatch assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_mhatch, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new/datum/stack_recipe("firelock frame", CATEGORY_CONSTRUCTION, /obj/structure/firelock_frame, 3, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("turret frame", CATEGORY_CONSTRUCTION, /obj/machinery/porta_turret_construct, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("meatspike frame", CATEGORY_CONSTRUCTION, /obj/structure/kitchenspike_frame, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("reflector frame", CATEGORY_CONSTRUCTION, /obj/structure/reflector, 5, time = 25, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("grenade casing", CATEGORY_GENERAL, /obj/item/grenade/chem_grenade), \
	new/datum/stack_recipe("light fixture frame", CATEGORY_GENERAL, /obj/item/wallframe/light_fixture, 2), \
	new/datum/stack_recipe("small light fixture frame", CATEGORY_GENERAL, /obj/item/wallframe/light_fixture/small, 1), \
	new/datum/stack_recipe("apc frame", CATEGORY_ELECTRONICS, /obj/item/wallframe/apc, 2), \
	new/datum/stack_recipe("air alarm frame", CATEGORY_ELECTRONICS, /obj/item/wallframe/airalarm, 2), \
	new/datum/stack_recipe("fire alarm frame", CATEGORY_ELECTRONICS, /obj/item/wallframe/firealarm, 2), \
	new/datum/stack_recipe("extinguisher cabinet frame", CATEGORY_CONSTRUCTION, /obj/item/wallframe/extinguisher_cabinet, 2), \
	new/datum/stack_recipe("button frame", CATEGORY_CONSTRUCTION, /obj/item/wallframe/button, 1), \
	new/datum/stack_recipe("iron door", CATEGORY_CONSTRUCTION, /obj/structure/mineral_door/iron, 20, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("floodlight frame", CATEGORY_CONSTRUCTION, /obj/structure/floodlight_frame, 5, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("voting box", CATEGORY_GENERAL, /obj/structure/votebox, 15, time = 50), \
	new/datum/stack_recipe("pestle", CATEGORY_GENERAL, /obj/item/pestle, 1, time = 50), \
	new/datum/stack_recipe("hygienebot assembly", CATEGORY_GENERAL, /obj/item/bot_assembly/hygienebot, 2, time = 5 SECONDS), \
	new/datum/stack_recipe("shower frame", CATEGORY_PLUMBING, /obj/structure/showerframe, 2, time= 2 SECONDS)
))

/obj/item/stack/sheet/metal
	name = "metal"
	desc = "Sheets made out of metal."
	singular_name = "metal sheet"
	icon_state = "sheet-metal"
	inhand_icon_state = "sheet-metal"
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT)
	throwforce = 10
	flags_1 = CONDUCT_1
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/metal
	grind_results = list(/datum/reagent/iron = 20)
	point_value = 2
	tableVariant = /obj/structure/table
	material_type = /datum/material/iron
	matter_amount = 4

/obj/item/stack/sheet/metal/narsie_act()
	new /obj/item/stack/sheet/runed_metal(loc, amount)
	qdel(src)

/obj/item/stack/sheet/metal/fifty
	amount = 50

/obj/item/stack/sheet/metal/twenty
	amount = 20

/obj/item/stack/sheet/metal/ten
	amount = 10

/obj/item/stack/sheet/metal/five
	amount = 5

/obj/item/stack/sheet/metal/cyborg
	custom_materials = null
	is_cyborg = 1
	cost = 500

/obj/item/stack/sheet/metal/get_main_recipes()
	. = ..()
	. += GLOB.metal_recipes

/obj/item/stack/sheet/metal/suicide_act(mob/living/carbon/user)
	user.visible_message("<span class='suicide'>[user] begins whacking [user.p_them()]self over the head with \the [src]! It looks like [user.p_theyre()] trying to commit suicide!</span>")
	return BRUTELOSS

/*
 * Plasteel
 */
GLOBAL_LIST_INIT(plasteel_recipes, list ( \
	new/datum/stack_recipe("AI core", CATEGORY_GENERAL, /obj/structure/ai_core, 4, time = 50, one_per_turf = TRUE), \
	new/datum/stack_recipe("bomb assembly", CATEGORY_GENERAL, /obj/machinery/syndicatebomb/empty, 10, time = 50), \
	new/datum/stack_recipe("high security airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_highsecurity, 4, time = 50, one_per_turf = 1, on_floor = 1), \
	new/datum/stack_recipe("vault door assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_vault, 6, time = 50, one_per_turf = 1, on_floor = 1), \
))

/obj/item/stack/sheet/plasteel
	name = "plasteel"
	singular_name = "plasteel sheet"
	desc = "This sheet is an alloy of iron and plasma."
	icon_state = "sheet-plasteel"
	inhand_icon_state = "sheet-plasteel"
	custom_materials = list(/datum/material/iron=MINERAL_MATERIAL_AMOUNT, /datum/material/plasma=MINERAL_MATERIAL_AMOUNT)
	throwforce = 10
	flags_1 = CONDUCT_1
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 100, ACID = 80)
	resistance_flags = FIRE_PROOF
	merge_type = /obj/item/stack/sheet/plasteel
	grind_results = list(/datum/reagent/iron = 20, /datum/reagent/toxin/plasma = 20)
	point_value = 23
	tableVariant = /obj/structure/table/reinforced
	material_flags = MATERIAL_NO_EFFECTS
	matter_amount = 12

/obj/item/stack/sheet/plasteel/get_main_recipes()
	. = ..()
	. += GLOB.plasteel_recipes

/obj/item/stack/sheet/plasteel/twenty
	amount = 20

/obj/item/stack/sheet/plasteel/fifty
	amount = 50

/*
 * Wood
 */
GLOBAL_LIST_INIT(wood_recipes, list ( \
	new/datum/stack_recipe("wooden sandals", CATEGORY_WEAPON, /obj/item/clothing/shoes/sandal, 1), \
	new/datum/stack_recipe("wood floor tile", CATEGORY_CONSTRUCTION, /obj/item/stack/tile/wood, 1, 4, 20), \
	new/datum/stack_recipe("wood table frame", CATEGORY_CONSTRUCTION, /obj/structure/table_frame/wood, 2, time = 10), \
	new/datum/stack_recipe("rifle stock", CATEGORY_WEAPON, /obj/item/weaponcrafting/stock, 10, time = 40), \
	new/datum/stack_recipe("rolling pin", CATEGORY_GENERAL, /obj/item/kitchen/rollingpin, 2, time = 30), \
	new/datum/stack_recipe("wooden chair", CATEGORY_FURNITURE, /obj/structure/chair/wood/, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("winged wooden chair", CATEGORY_FURNITURE, /obj/structure/chair/wood/wings, 3, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden barricade", CATEGORY_CONSTRUCTION, /obj/structure/barricade/wooden, 5, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden door", CATEGORY_CONSTRUCTION, /obj/structure/mineral_door/wood, 10, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("coffin", CATEGORY_GENERAL, /obj/structure/closet/crate/coffin, 5, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("book case", CATEGORY_FURNITURE, /obj/structure/bookcase, 4, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("drying rack", CATEGORY_GENERAL, /obj/machinery/smartfridge/drying_rack, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden barrel", CATEGORY_GENERAL, /obj/structure/fermenting_barrel, 8, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("dog bed", CATEGORY_FURNITURE, /obj/structure/bed/dogbed, 10, time = 10, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("dresser", CATEGORY_FURNITURE, /obj/structure/dresser, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("picture frame", CATEGORY_GENERAL, /obj/item/wallframe/picture, 1, time = 10),\
	new/datum/stack_recipe("painting frame", CATEGORY_GENERAL, /obj/item/wallframe/painting, 1, time = 10),\
	new/datum/stack_recipe("display case chassis", CATEGORY_CONSTRUCTION, /obj/structure/displaycase_chassis, 5, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("wooden buckler", CATEGORY_WEAPON, /obj/item/shield/riot/buckler, 20, time = 40), \
	new/datum/stack_recipe("apiary", CATEGORY_GENERAL, /obj/structure/beebox, 40, time = 50),\
	new/datum/stack_recipe("tiki mask", CATEGORY_CLOTHING, /obj/item/clothing/mask/gas/tiki_mask, 2), \
	new/datum/stack_recipe("honey frame", CATEGORY_CONSTRUCTION, /obj/item/honey_frame, 5, time = 10),\
	new/datum/stack_recipe("wooden bucket", CATEGORY_GENERAL, /obj/item/reagent_containers/glass/bucket/wooden, 3, time = 10),\
	new/datum/stack_recipe("rake", CATEGORY_GENERAL, /obj/item/cultivator/rake, 5, time = 10),\
	new/datum/stack_recipe("ore box", CATEGORY_GENERAL, /obj/structure/ore_box, 4, time = 50, one_per_turf = TRUE, on_floor = TRUE),\
	new/datum/stack_recipe("wooden crate", CATEGORY_GENERAL, /obj/structure/closet/crate/wooden, 6, time = 50, one_per_turf = TRUE, on_floor = TRUE),\
	new/datum/stack_recipe("baseball bat", CATEGORY_WEAPON, /obj/item/melee/baseball_bat, 5, time = 15),\
	new/datum/stack_recipe("loom", CATEGORY_GENERAL, /obj/structure/loom, 10, time = 15, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("mortar", CATEGORY_GENERAL, /obj/item/reagent_containers/glass/mortar, 3), \
	new/datum/stack_recipe("firebrand", CATEGORY_GENERAL, /obj/item/match/firebrand, 2, time = 100), \
	new /datum/stack_recipe("pew (middle)", CATEGORY_FURNITURE, /obj/structure/chair/pew, 3, one_per_turf = TRUE, on_floor = TRUE),
	new /datum/stack_recipe("pew (left)", CATEGORY_FURNITURE, /obj/structure/chair/pew/left, 3, one_per_turf = TRUE, on_floor = TRUE),
	new /datum/stack_recipe("pew (right)", CATEGORY_FURNITURE, /obj/structure/chair/pew/right, 3, one_per_turf = TRUE, on_floor = TRUE)
	))

/obj/item/stack/sheet/mineral/wood
	name = "wooden plank"
	desc = "One can only guess that this is a bunch of wood."
	singular_name = "wood plank"
	icon_state = "sheet-wood"
	inhand_icon_state = "sheet-wood"
	icon = 'icons/obj/stack_objects.dmi'
	custom_materials = list(/datum/material/wood=MINERAL_MATERIAL_AMOUNT)
	sheettype = "wood"
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 50, ACID = 0)
	resistance_flags = FLAMMABLE
	merge_type = /obj/item/stack/sheet/mineral/wood
	novariants = TRUE
	material_type = /datum/material/wood
	grind_results = list(/datum/reagent/cellulose = 20) //no lignocellulose or lignin reagents yet,
	walltype = /turf/closed/wall/mineral/wood

/obj/item/stack/sheet/mineral/wood/get_main_recipes()
	. = ..()
	. += GLOB.wood_recipes

/obj/item/stack/sheet/mineral/wood/fifty
	amount = 50

/*
 * Bamboo
 */

GLOBAL_LIST_INIT(bamboo_recipes, list ( \
	new/datum/stack_recipe("punji sticks trap", CATEGORY_WEAPON, /obj/structure/punji_sticks, 5, time = 30, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("blow gun", CATEGORY_WEAPON,/obj/item/gun/syringe/blowgun, 10, time = 70), \
	))

/obj/item/stack/sheet/mineral/bamboo
	name = "bamboo cuttings"
	desc = "Finely cut bamboo sticks."
	singular_name = "cut bamboo stick"
	icon_state = "sheet-bamboo"
	inhand_icon_state = "sheet-bamboo"
	icon = 'icons/obj/stack_objects.dmi'
	custom_materials = list(/datum/material/bamboo = MINERAL_MATERIAL_AMOUNT)
	throwforce = 15
	armor = list(MELEE = 0, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 50, ACID = 0)
	resistance_flags = FLAMMABLE
	merge_type = /obj/item/stack/sheet/mineral/bamboo
	grind_results = list(/datum/reagent/cellulose = 10)
	material_type = /datum/material/bamboo

/obj/item/stack/sheet/mineral/bamboo/get_main_recipes()
	. = ..()
	. += GLOB.bamboo_recipes

/*
 * Cloth
 */
GLOBAL_LIST_INIT(cloth_recipes, list ( \
	new/datum/stack_recipe("white jumpskirt", CATEGORY_CLOTHING, /obj/item/clothing/under/color/jumpskirt/white, 3), /*Ladies first*/ \
	new/datum/stack_recipe("white jumpsuit", CATEGORY_CLOTHING, /obj/item/clothing/under/color/white, 3), \
	new/datum/stack_recipe("white shoes", CATEGORY_CLOTHING, /obj/item/clothing/shoes/sneakers/white, 2), \
	new/datum/stack_recipe("white scarf", CATEGORY_CLOTHING, /obj/item/clothing/neck/scarf, 1), \
	new/datum/stack_recipe("backpack", CATEGORY_CLOTHING, /obj/item/storage/backpack, 4), \
	new/datum/stack_recipe("duffel bag", CATEGORY_CLOTHING, /obj/item/storage/backpack/duffelbag, 6), \
	new/datum/stack_recipe("plant bag", CATEGORY_CLOTHING, /obj/item/storage/bag/plants, 4), \
	new/datum/stack_recipe("book bag", CATEGORY_CLOTHING, /obj/item/storage/bag/books, 4), \
	new/datum/stack_recipe("mining satchel", CATEGORY_CLOTHING, /obj/item/storage/bag/ore, 4), \
	new/datum/stack_recipe("chemistry bag", CATEGORY_CLOTHING, /obj/item/storage/bag/chemistry, 4), \
	new/datum/stack_recipe("bio bag", CATEGORY_CLOTHING, /obj/item/storage/bag/bio, 4), \
	new/datum/stack_recipe("construction bag", CATEGORY_CLOTHING, /obj/item/storage/bag/construction, 4), \
	new/datum/stack_recipe("improvised gauze", CATEGORY_GENERAL, /obj/item/stack/medical/gauze/improvised, 1, 2, 6), \
	new/datum/stack_recipe("rag", CATEGORY_GENERAL, /obj/item/reagent_containers/glass/rag, 1), \
	new/datum/stack_recipe("bedsheet", CATEGORY_GENERAL, /obj/item/bedsheet, 3), \
	new/datum/stack_recipe("empty sandbag", CATEGORY_GENERAL, /obj/item/emptysandbag, 4), \
	new/datum/stack_recipe("fingerless gloves", CATEGORY_CLOTHING, /obj/item/clothing/gloves/fingerless, 1), \
	new/datum/stack_recipe("white gloves", CATEGORY_CLOTHING, /obj/item/clothing/gloves/color/white, 3), \
	new/datum/stack_recipe("white softcap", CATEGORY_CLOTHING, /obj/item/clothing/head/soft/mime, 2), \
	new/datum/stack_recipe("white beanie", CATEGORY_CLOTHING, /obj/item/clothing/head/beanie, 2), \
	new/datum/stack_recipe("blindfold", /obj/item/clothing/glasses/blindfold, 2), \
	new/datum/stack_recipe("19x19 canvas", /obj/item/canvas/nineteen_nineteen, 3), \
	new/datum/stack_recipe("23x19 canvas", /obj/item/canvas/twentythree_nineteen, 4), \
	new/datum/stack_recipe("23x23 canvas", /obj/item/canvas/twentythree_twentythree, 5), \
	))

/obj/item/stack/sheet/cloth
	name = "cloth"
	desc = "Is it cotton? Linen? Denim? Burlap? Canvas? You can't tell."
	singular_name = "cloth roll"
	icon_state = "sheet-cloth"
	inhand_icon_state = "sheet-cloth"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cloth
	drop_sound = 'sound/items/handling/cloth_drop.ogg'
	pickup_sound =  'sound/items/handling/cloth_pickup.ogg'
	grind_results = list(/datum/reagent/cellulose = 20)

/obj/item/stack/sheet/cloth/get_main_recipes()
	. = ..()
	. += GLOB.cloth_recipes

/obj/item/stack/sheet/cloth/ten
	amount = 10

/obj/item/stack/sheet/cloth/five
	amount = 5

GLOBAL_LIST_INIT(durathread_recipes, list ( \
	new/datum/stack_recipe("durathread jumpsuit", CATEGORY_CLOTHING, /obj/item/clothing/under/misc/durathread, 4, time = 40),
	new/datum/stack_recipe("durathread beret", CATEGORY_CLOTHING, /obj/item/clothing/head/beret/durathread, 2, time = 40), \
	new/datum/stack_recipe("durathread beanie", CATEGORY_CLOTHING, /obj/item/clothing/head/beanie/durathread, 2, time = 40), \
	new/datum/stack_recipe("durathread bandana", CATEGORY_CLOTHING, /obj/item/clothing/mask/bandana/durathread, 1, time = 25), \
	))

/obj/item/stack/sheet/durathread
	name = "durathread"
	desc = "A fabric sown from incredibly durable threads, known for its usefulness in armor production."
	singular_name = "durathread roll"
	icon_state = "sheet-durathread"
	inhand_icon_state = "sheet-cloth"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/durathread
	drop_sound = 'sound/items/handling/cloth_drop.ogg'
	pickup_sound =  'sound/items/handling/cloth_pickup.ogg'

/obj/item/stack/sheet/durathread/get_main_recipes()
	. = ..()
	. += GLOB.durathread_recipes

/obj/item/stack/sheet/cotton
	name = "raw cotton bundle"
	desc = "A bundle of raw cotton ready to be spun on the loom."
	singular_name = "raw cotton ball"
	icon_state = "sheet-cotton"
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cotton
	var/pull_effort = 30
	var/loom_result = /obj/item/stack/sheet/cloth
	grind_results = list(/datum/reagent/cellulose = 20)

/obj/item/stack/sheet/cotton/durathread
	name = "raw durathread bundle"
	desc = "A bundle of raw durathread ready to be spun on the loom."
	singular_name = "raw durathread ball"
	icon_state = "sheet-durathreadraw"
	merge_type = /obj/item/stack/sheet/cotton/durathread
	pull_effort = 70
	loom_result = /obj/item/stack/sheet/durathread
	grind_results = list()

/*
 * Cardboard
 */
GLOBAL_LIST_INIT(cardboard_recipes, list (														\
	new/datum/stack_recipe("box", CATEGORY_GENERAL, /obj/item/storage/box),										\
	new/datum/stack_recipe("cardborg suit", CATEGORY_CLOTHING, /obj/item/clothing/suit/cardborg, 3),				\
	new/datum/stack_recipe("cardborg helmet", CATEGORY_CLOTHING, /obj/item/clothing/head/cardborg),				\
	new/datum/stack_recipe("large box", CATEGORY_GENERAL, /obj/structure/closet/cardboard, 4, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("cardboard cutout", CATEGORY_GENERAL, /obj/item/cardboard_cutout, 5),					\
	new/datum/stack_recipe("pizza box", CATEGORY_GENERAL, /obj/item/pizzabox),									\
	new/datum/stack_recipe("folder", CATEGORY_GENERAL, /obj/item/folder),											\
	//TO-DO: Find a proper way to just change the illustration on the box. Code isn't the issue, input is.
	new /datum/stack_recipe("donut box", CATEGORY_GENERAL, /obj/item/storage/fancy/donut_box),				\
	new /datum/stack_recipe("egg box", CATEGORY_GENERAL, /obj/item/storage/fancy/egg_box),					\
	new /datum/stack_recipe("donk-pockets box", CATEGORY_GENERAL, /obj/item/storage/box/donkpockets),			\
	new /datum/stack_recipe("donk-pockets spicy box", CATEGORY_GENERAL, /obj/item/storage/box/donkpockets/donkpocketspicy),			\
	new /datum/stack_recipe("donk-pockets teriyaki box", CATEGORY_GENERAL, /obj/item/storage/box/donkpockets/donkpocketteriyaki),		\
	new /datum/stack_recipe("donk-pockets pizza box", CATEGORY_GENERAL, /obj/item/storage/box/donkpockets/donkpocketpizza),			\
	new /datum/stack_recipe("donk-pockets berry box", CATEGORY_GENERAL, /obj/item/storage/box/donkpockets/donkpocketberry),			\
	new /datum/stack_recipe("donk-pockets honk box", CATEGORY_GENERAL, /obj/item/storage/box/donkpockets/donkpockethonk),				\
	new /datum/stack_recipe("monkey cube box", CATEGORY_GENERAL, /obj/item/storage/box/monkeycubes),
	new /datum/stack_recipe("nugget box", CATEGORY_GENERAL, /obj/item/storage/fancy/nugget_box),			\
	new /datum/stack_recipe("lethal ammo box",  CATEGORY_GENERAL,/obj/item/storage/box/lethalshot),			\
	new /datum/stack_recipe("rubber shot ammo box", CATEGORY_GENERAL, /obj/item/storage/box/rubbershot),		\
	new /datum/stack_recipe("bean bag ammo box", CATEGORY_GENERAL, /obj/item/storage/box/beanbag),			\
	new /datum/stack_recipe("flashbang box", CATEGORY_GENERAL, /obj/item/storage/box/flashbangs),				\
	new /datum/stack_recipe("flashes box", CATEGORY_GENERAL, /obj/item/storage/box/flashes),					\
	new /datum/stack_recipe("handcuffs box", CATEGORY_GENERAL, /obj/item/storage/box/handcuffs),				\
	new /datum/stack_recipe("ID card box", CATEGORY_GENERAL, /obj/item/storage/box/ids),						\
	new /datum/stack_recipe("PDA box", CATEGORY_GENERAL, /obj/item/storage/box/pdas),							\
	new /datum/stack_recipe("pillbottle box", CATEGORY_GENERAL, /obj/item/storage/box/pillbottles),			\
	new /datum/stack_recipe("beaker box", CATEGORY_GENERAL, /obj/item/storage/box/beakers),					\
	new /datum/stack_recipe("syringe box", CATEGORY_GENERAL, /obj/item/storage/box/syringes),					\
	new /datum/stack_recipe("latex gloves box", CATEGORY_GENERAL, /obj/item/storage/box/gloves),				\
	new /datum/stack_recipe("sterile masks box", CATEGORY_GENERAL, /obj/item/storage/box/masks),				\
	new /datum/stack_recipe("body bag box", CATEGORY_GENERAL, /obj/item/storage/box/bodybags),					\
	new /datum/stack_recipe("perscription glasses box", CATEGORY_GENERAL, /obj/item/storage/box/rxglasses),	\
	new /datum/stack_recipe("disk box", CATEGORY_GENERAL, /obj/item/storage/box/disks),						\
	new /datum/stack_recipe("light tubes box", CATEGORY_GENERAL, /obj/item/storage/box/lights/tubes),			\
	new /datum/stack_recipe("light bulbs box", CATEGORY_GENERAL, /obj/item/storage/box/lights/bulbs),			\
	new /datum/stack_recipe("mixed lights box", CATEGORY_GENERAL, /obj/item/storage/box/lights/mixed),		\
	new /datum/stack_recipe("mouse traps box", CATEGORY_GENERAL, /obj/item/storage/box/mousetraps),			\
	new /datum/stack_recipe("candle box", CATEGORY_GENERAL, /obj/item/storage/fancy/candle_box)
))

/obj/item/stack/sheet/cardboard	//BubbleWrap //it's cardboard you fuck
	name = "cardboard"
	desc = "Large sheets of card, like boxes folded flat."
	singular_name = "cardboard sheet"
	icon_state = "sheet-card"
	inhand_icon_state = "sheet-card"
	custom_materials = list(/datum/material/cardboard = MINERAL_MATERIAL_AMOUNT)
	resistance_flags = FLAMMABLE
	force = 0
	throwforce = 0
	merge_type = /obj/item/stack/sheet/cardboard
	novariants = TRUE
	grind_results = list(/datum/reagent/cellulose = 10)
	material_type = /datum/material/cardboard

/obj/item/stack/sheet/cardboard/get_main_recipes()
	. = ..()
	. += GLOB.cardboard_recipes

/obj/item/stack/sheet/cardboard/fifty
	amount = 50

/obj/item/stack/sheet/cardboard/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/stamp/clown) && !istype(loc, /obj/item/storage))
		var/atom/droploc = drop_location()
		if(use(1))
			playsound(I, 'sound/items/bikehorn.ogg', 50, TRUE, -1)
			to_chat(user, "<span class='notice'>You stamp the cardboard! It's a clown box! Honk!</span>")
			if (amount >= 0)
				new/obj/item/storage/box/clown(droploc) //bugfix
	if(istype(I, /obj/item/stamp/chameleon) && !istype(loc, /obj/item/storage))
		var/atom/droploc = drop_location()
		if(use(1))
			to_chat(user, "<span class='notice'>You stamp the cardboard in a sinister way.</span>")
			if (amount >= 0)
				new/obj/item/storage/box/syndie_kit(droploc)
	else
		. = ..()


/*
 * Runed Metal
 */

GLOBAL_LIST_INIT(runed_metal_recipes, list ( \
	new /datum/stack_recipe("runed door (a weak door that stuns non-cultists who touch it))", CATEGORY_CONSTRUCTION, /obj/machinery/door/airlock/cult, 1, time = 5 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("runed girder (not a recommended usage of runed metal)", CATEGORY_CONSTRUCTION, /obj/structure/girder/cult, 1, time = 5 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("pylon (heals (and regenerates the blood of) nearby blood cultists and constructs, but also turns nearby floor tiles into engraved flooring)", CATEGORY_GENERAL, /obj/structure/destructible/cult/pylon, 4, time = 4 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("daemon forge (can make shielded robes, flagellant's robes, and mirror shields)", CATEGORY_GENERAL, /obj/structure/destructible/cult/forge, 3, time = 4 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("archives (can make zealot's blindfolds, shuttle curse orbs, and veil walker equipment)", CATEGORY_GENERAL, /obj/structure/destructible/cult/tome, 3, time = 4 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	new /datum/stack_recipe("altar (can make eldritch whetstones, construct shells, and flasks of unholy water)", CATEGORY_GENERAL, /obj/structure/destructible/cult/talisman, 3, time = 4 SECONDS, one_per_turf = TRUE, on_floor = TRUE), \
	))

/obj/item/stack/sheet/runed_metal
	name = "runed metal"
	desc = "Sheets of cold metal with shifting inscriptions writ upon them."
	singular_name = "runed metal sheet"
	icon_state = "sheet-runed"
	inhand_icon_state = "sheet-runed"
	icon = 'icons/obj/stack_objects.dmi'
	custom_materials = list(/datum/material/runedmetal = MINERAL_MATERIAL_AMOUNT)
	sheettype = "runed"
	merge_type = /obj/item/stack/sheet/runed_metal
	novariants = TRUE
	grind_results = list(/datum/reagent/iron = 5, /datum/reagent/blood = 15)
	material_type = /datum/material/runedmetal

/obj/item/stack/sheet/runed_metal/attack_self(mob/living/user)
	if(!iscultist(user))
		to_chat(user, "<span class='warning'>Only one with forbidden knowledge could hope to work this metal...</span>")
		return
	var/turf/T = get_turf(user) //we may have moved. adjust as needed...
	var/area/A = get_area(user)
	if((!is_station_level(T.z) && !is_mining_level(T.z)) || (A && !(A.flags_1 & CULT_PERMITTED_1)))
		to_chat(user, "<span class='warning'>The veil is not weak enough here.</span>")
		return FALSE
	return ..()

/obj/item/stack/sheet/runed_metal/get_main_recipes()
	. = ..()
	. += GLOB.runed_metal_recipes

/obj/item/stack/sheet/runed_metal/fifty
	amount = 50

/obj/item/stack/sheet/runed_metal/ten
	amount = 10

/obj/item/stack/sheet/runed_metal/five
	amount = 5

/*
 * Bronze
 */

GLOBAL_LIST_INIT(bronze_recipes, list ( \
	new/datum/stack_recipe("wall gear", CATEGORY_CONSTRUCTION, /obj/structure/girder/bronze, 2, time = 20, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("directional bronze window", CATEGORY_WINDOW, /obj/structure/window/bronze/unanchored, time = 0, on_floor = TRUE, window_checks = TRUE), \
	new/datum/stack_recipe("fulltile bronze window", CATEGORY_WINDOW, /obj/structure/window/bronze/fulltile/unanchored, 2, time = 0, on_floor = TRUE, window_checks = TRUE), \
	new/datum/stack_recipe("pinion airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_bronze, 4, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("bronze pinion airlock assembly", CATEGORY_CONSTRUCTION, /obj/structure/door_assembly/door_assembly_bronze/seethru, 4, time = 50, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("bronze hat", CATEGORY_CLOTHING, /obj/item/clothing/head/bronze), \
	new/datum/stack_recipe("bronze suit", CATEGORY_CLOTHING, /obj/item/clothing/suit/bronze), \
	new/datum/stack_recipe("bronze boots", CATEGORY_CLOTHING, /obj/item/clothing/shoes/bronze), \
	new/datum/stack_recipe("bronze chair", CATEGORY_FURNITURE, /obj/structure/chair/bronze, 1, time = 0, one_per_turf = TRUE, on_floor = TRUE), \
	new/datum/stack_recipe("Marx Bust", CATEGORY_GENERAL, /obj/structure/statue/bronze/marx, 15, one_per_turf = 1, on_floor = 1), \
))

/obj/item/stack/tile/bronze
	name = "brass"
	desc = "On closer inspection, what appears to be wholly-unsuitable-for-building brass is actually more structurally stable bronze."
	singular_name = "bronze sheet"
	icon_state = "sheet-brass"
	inhand_icon_state = "sheet-brass"
	icon = 'icons/obj/stack_objects.dmi'
	custom_materials = list(/datum/material/bronze = MINERAL_MATERIAL_AMOUNT)
	lefthand_file = 'icons/mob/inhands/misc/sheets_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/sheets_righthand.dmi'
	resistance_flags = FIRE_PROOF | ACID_PROOF
	force = 5
	throwforce = 10
	max_amount = 50
	throw_speed = 1
	throw_range = 3
	turf_type = /turf/open/floor/bronze
	novariants = FALSE
	grind_results = list(/datum/reagent/iron = 5, /datum/reagent/copper = 3) //we have no "tin" reagent so this is the closest thing
	merge_type = /obj/item/stack/tile/bronze
	tableVariant = /obj/structure/table/bronze
	material_type = /datum/material/bronze

/obj/item/stack/tile/bronze/get_main_recipes()
	. = ..()
	. += GLOB.bronze_recipes

/obj/item/stack/sheet/paperframes/Initialize()
	. = ..()
	pixel_x = 0
	pixel_y = 0

/obj/item/stack/tile/bronze/thirty
	amount = 30

/*
 * Lesser and Greater gems - unused
 */
/obj/item/stack/sheet/lessergem
	name = "lesser gems"
	desc = "Rare kind of gems which are only gained by blood sacrifice to minor deities. They are needed in crafting powerful objects."
	singular_name = "lesser gem"
	icon_state = "sheet-lessergem"
	inhand_icon_state = "sheet-lessergem"
	novariants = TRUE


/obj/item/stack/sheet/greatergem
	name = "greater gems"
	desc = "Rare kind of gems which are only gained by blood sacrifice to minor deities. They are needed in crafting powerful objects."
	singular_name = "greater gem"
	icon_state = "sheet-greatergem"
	inhand_icon_state = "sheet-greatergem"
	novariants = TRUE

	/*
 * Bones
 */
/obj/item/stack/sheet/bone
	name = "bones"
	icon = 'icons/obj/mining.dmi'
	icon_state = "bone"
	inhand_icon_state = "sheet-bone"
	custom_materials = list(/datum/material/bone = MINERAL_MATERIAL_AMOUNT)
	singular_name = "bone"
	desc = "Someone's been drinking their milk."
	force = 7
	throwforce = 5
	max_amount = 12
	w_class = WEIGHT_CLASS_NORMAL
	throw_speed = 1
	throw_range = 3
	grind_results = list(/datum/reagent/carbon = 10)
	merge_type = /obj/item/stack/sheet/bone
	material_type = /datum/material/bone

GLOBAL_LIST_INIT(plastic_recipes, list(
	new /datum/stack_recipe("plastic floor tile", CATEGORY_CONSTRUCTION, /obj/item/stack/tile/plastic, 1, 4, 20), \
	new /datum/stack_recipe("folding plastic chair", CATEGORY_FURNITURE, /obj/structure/chair/plastic, 2), \
	new /datum/stack_recipe("plastic flaps", CATEGORY_GENERAL, /obj/structure/plasticflaps, 5, one_per_turf = TRUE, on_floor = TRUE, time = 40), \
	new /datum/stack_recipe("water bottle", CATEGORY_GENERAL, /obj/item/reagent_containers/food/drinks/waterbottle/empty), \
	new /datum/stack_recipe("large water bottle", CATEGORY_GENERAL, /obj/item/reagent_containers/food/drinks/waterbottle/large/empty, 3), \
	new /datum/stack_recipe("colo cups", CATEGORY_GENERAL, /obj/item/reagent_containers/food/drinks/colocup, 1), \
	new /datum/stack_recipe("wet floor sign", CATEGORY_GENERAL, /obj/item/clothing/suit/caution, 2), \
	new /datum/stack_recipe("blank wall sign", CATEGORY_GENERAL, /obj/item/sign, 1)))

/obj/item/stack/sheet/plastic
	name = "plastic"
	desc = "Compress dinosaur over millions of years, then refine, split and mold, and voila! You have plastic."
	singular_name = "plastic sheet"
	icon_state = "sheet-plastic"
	inhand_icon_state = "sheet-plastic"
	custom_materials = list(/datum/material/plastic=MINERAL_MATERIAL_AMOUNT)
	throwforce = 7
	material_type = /datum/material/plastic
	merge_type = /obj/item/stack/sheet/plastic

/obj/item/stack/sheet/plastic/fifty
	amount = 50

/obj/item/stack/sheet/plastic/five
	amount = 5

/obj/item/stack/sheet/plastic/get_main_recipes()
	. = ..()
	. += GLOB.plastic_recipes

GLOBAL_LIST_INIT(paperframe_recipes, list(
	new /datum/stack_recipe("paper frame separator", CATEGORY_WINDOW, /obj/structure/window/paperframe, 2, one_per_turf = TRUE, on_floor = TRUE, time = 10), \
	new /datum/stack_recipe("paper frame door", CATEGORY_CONSTRUCTION, /obj/structure/mineral_door/paperframe, 3, one_per_turf = TRUE, on_floor = TRUE, time = 10 )))

/obj/item/stack/sheet/paperframes
	name = "paper frames"
	desc = "A thin wooden frame with paper attached."
	singular_name = "paper frame"
	icon_state = "sheet-paper"
	inhand_icon_state = "sheet-paper"
	custom_materials = list(/datum/material/paper = MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/paperframes
	resistance_flags = FLAMMABLE
	grind_results = list(/datum/reagent/cellulose = 20)
	material_type = /datum/material/paper

/obj/item/stack/sheet/paperframes/get_main_recipes()
	. = ..()
	. += GLOB.paperframe_recipes
/obj/item/stack/sheet/paperframes/five
	amount = 5
/obj/item/stack/sheet/paperframes/twenty
	amount = 20
/obj/item/stack/sheet/paperframes/fifty
	amount = 50

/obj/item/stack/sheet/capitalisium
	name = "capitalisium sheet"
	desc = "A source of raw capitalism, capable of bringing forth the prophesized Capitalist Golem."
	icon_state = "sheet-capitalisium"
	merge_type = /obj/item/stack/sheet/capitalisium

/obj/item/stack/sheet/stalinium
	name = "stalinium sheet"
	desc = "A source of raw socialism, capable of bringing forth the prophesized Soviet Golem."
	icon_state = "sheet-stalinium"
	merge_type = /obj/item/stack/sheet/stalinium

/obj/item/stack/sheet/meat
	name = "meat sheets"
	desc = "Something's bloody meat compressed into a nice solid sheet."
	singular_name = "meat sheet"
	icon_state = "sheet-meat"
	material_flags = MATERIAL_COLOR
	custom_materials = list(/datum/material/meat = MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/meat
	material_type = /datum/material/meat
	material_modifier = 1 //None of that wussy stuff

/obj/item/stack/sheet/meat/fifty
	amount = 50
/obj/item/stack/sheet/meat/twenty
	amount = 20
/obj/item/stack/sheet/meat/five
	amount = 5

/obj/item/stack/sheet/pizza
	name = "pepperoni sheetzzas"
	desc = "It's a delicious pepperoni sheetzza!"
	singular_name = "pepperoni sheetzza"
	icon_state = "sheet-pizza"
	custom_materials = list(/datum/material/pizza = MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/pizza
	material_type = /datum/material/pizza
	material_modifier = 1

/obj/item/stack/sheet/pizza/fifty
	amount = 50
/obj/item/stack/sheet/pizza/twenty
	amount = 20
/obj/item/stack/sheet/pizza/five
	amount = 5

/obj/item/stack/sheet/sandblock
	name = "blocks of sand"
	desc = "You're too old to be playing with sandcastles. Now you build... sandstations."
	singular_name = "sand block"
	icon_state = "sheet-sandstone"
	custom_materials = list(/datum/material/sand = MINERAL_MATERIAL_AMOUNT)
	merge_type = /obj/item/stack/sheet/sandblock
	material_type = /datum/material/sand
	material_modifier = 1

/obj/item/stack/sheet/sandblock/fifty
	amount = 50
/obj/item/stack/sheet/sandblock/twenty
	amount = 20
/obj/item/stack/sheet/sandblock/five
	amount = 5
