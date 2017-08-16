//-----USS Almayer Machinery file -----//
// Put any new machines in here before map is released and everything moved to their proper positions.

/obj/machinery/vending/uniform_supply
	name = "\improper ColMarTech surplus uniform vendor"
	desc = "A automated weapon rack hooked up to a colossal storage of uniforms"
	icon_state = "uniform_marine"
	icon_vend = "uniform_marine_vend"
	icon_deny = "uniform_marine"
	req_access = null
	req_access_txt = "0"
	req_one_access = null
	req_one_access_txt = "9;2;21"
	var/squad_tag = ""

	product_ads = "If it moves, it's hostile!;How many enemies have you killed today?;Shoot first, perform autopsy later!;Your ammo is right here.;Guns!;Die, scumbag!;Don't shoot me bro!;Shoot them, bro.;Why not have a donut?"
	products = list(
					/obj/item/weapon/storage/backpack/marine = 10,
					/obj/item/weapon/storage/backpack/marine/satchel = 10,
					/obj/item/weapon/storage/belt/marine = 10,
					/obj/item/clothing/shoes/marine = 10,
					/obj/item/clothing/under/marine = 10
					)

	prices = list()

	New()

		..()
		var/products2[]
		if(squad_tag != null) //probably some better way to slide this in but no sleep is no sleep.
			switch(squad_tag)
				if("Alpha")
					products2 = list(/obj/item/device/radio/headset/almayer/marine/alpha = 20,
									/obj/item/clothing/gloves/marine/alpha = 10)
				if("Bravo")
					products2 = list(/obj/item/device/radio/headset/almayer/marine/bravo = 20,
									/obj/item/clothing/gloves/marine/bravo = 10)
				if("Charlie")
					products2 = list(/obj/item/device/radio/headset/almayer/marine/charlie = 20,
									/obj/item/clothing/gloves/marine/charlie = 10)
				if("Delta")
					products2 = list(/obj/item/device/radio/headset/almayer/marine/delta = 20,
									/obj/item/clothing/gloves/marine/delta = 10)
		else
			products2 = list(/obj/item/device/radio/headset/almayer = 10,
							/obj/item/clothing/gloves/marine = 10)
		build_inventory(products2)
		marine_vendors.Add(src)


	Dispose()
		. = ..()
		marine_vendors.Remove(src)

//-----USS Almayer Props -----//
//Put any props that don't function properly, they could function in the future but for now are for looks. This system could be expanded for other maps too. ~Art

/obj/item/prop/almayer
	name = "GENERIC USS ALMAYER PROP"
	desc = "THIS SHOULDN'T BE VISIBLE, AHELP 'ART-P03' IF SEEN IN ROUND WITH LOCATION"
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "hangarbox"

/obj/item/prop/almayer/box
	name = "metal crate"
	desc = "A metal crate used often for storing small electronics that go into dropships"
	icon_state = "hangarbox"
	w_class = 4

/obj/item/prop/almayer/flight_recorder
	name = "\improper FR-112 flight recorder"
	desc = "A small red box that contains flight data from a dropship while its on mission. Usually refered to the black box, although this one comes in bloody red."
	icon_state = "flight_recorder"
	w_class = 4

/obj/item/prop/almayer/lantern_pod
	name = "\improper LANTERN pod"
	desc = "A long green box mounted into a dropship to provide various optical support for its ground targeting systems."
	icon_state = "lantern_pod"
	w_class = 4

/obj/item/prop/almayer/flare_launcher
	name = "\improper MJU-77/C case"
	desc = "A flare launcher that usually gets mounted onto dropships to help survivability against infrared tracking missiles."
	icon_state = "flare_launcher"
	w_class = 2

/obj/item/prop/almayer/chaff_launcher
	name = "\improper RR-247 Chaff case"
	desc = "A chaff launcher that usually gets mounted onto dropships to help survivability against radar tracking missiles."
	icon_state = "chaff_launcher"
	w_class = 3

/obj/item/prop/almayer/handheld1
	name = "small handheld"
	desc = "A small piece of electronic doodads"
	icon_state = "handheld1"
	w_class = 2

/obj/item/prop/almayer/comp_closed
	name = "dropship maintenance computer"
	desc = "A closed dropship maintenance computer that technicans and pilots use to find out whats wrong with a dropship. It has various outlets for different systems."
	icon_state = "hangar_comp"
	w_class = 4

/obj/item/prop/almayer/comp_open
	name = "dropship maintenance computer"
	desc = "A opened dropship maintenance computer, it seems to be off however. Its used by technicans and pilots to find damaged or broken systems on a dropship. It has various outlets for different systems."
	icon_state = "hangar_comp_open"
	w_class = 4

/obj/machinery/prop/almayer
	name = "GENERIC USS ALMAYER PROP"
	desc = "THIS SHOULDN'T BE VISIBLE, AHELP 'ART-P01' IF SEEN IN ROUND WITH LOCATION"

/obj/machinery/prop/almayer/hangar/dropship_part_fabricator
/obj/machinery/prop/almayer/computer/PC
	name = "personal desktop"
	desc = "A small computer hooked up into the ship's computer network."
	icon_state = "terminal1"

/obj/machinery/prop/almayer/computer
	name = "systems computer"
	desc = "A small computer hooked up into the ship's systems."

	density = 0
	anchored = 1
	use_power = 1
	idle_power_usage = 20

	icon = 'icons/obj/almayer.dmi'
	icon_state = "terminal"

/obj/machinery/prop/almayer/CICmap
	name = "map table"
	desc = "A table that displays a map of the current target location"

	density = 1
	anchored = 1
	use_power = 1
	idle_power_usage = 20

	icon = 'icons/obj/almayer.dmi'
	icon_state = "maptable"

//Nonpower using props

/obj/structure/prop/almayer
	name = "GENERIC USS ALMAYER PROP"
	desc = "THIS SHOULDN'T BE VISIBLE, AHELP 'ART-P02' IF SEEN IN ROUND WITH LOCATION"
	density = 1
	anchored = 1

/obj/structure/prop/almayer/minigun_crate
	name = "30mm ammo crate"
	desc = "A crate full of 30mm bullets used on one of the weapon pod types for the dropship. Moving this will require some sort of lifter."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "30mm_crate"


/obj/structure/prop/almayer/mission_planning_system
	name = "\improper MPS IV computer"
	desc = "The Mission Planning System IV (MPS IV), a enhancement in mission planning and charting for dropship pilots across the USCM. Fully capable of customizing their flight paths and loadouts to suit their combat needs."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "mps"

/obj/structure/prop/almayer/mapping_computer
	name = "\improper CMPS II computer"
	desc = "The Common Mapping Production System version II allows for sensory imput from satellites and ship systems to derive planetary maps in a standardized fashion for all USCM pilots."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "mapping_comp"

/obj/structure/prop/almayer/sensor_computer1
	name = "sensor computer"
	desc = "The IBM series 10 computer retrofitted to work as a sensor computer for the ship. While somewhat dated it still serves its purpose."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "sensor_comp1"

/obj/structure/prop/almayer/sensor_computer2
	name = "sensor computer"
	desc = "The IBM series 10 computer retrofitted to work as a sensor computer for the ship. While somewhat dated it still serves its purpose."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "sensor_comp2"

/obj/structure/prop/almayer/sensor_computer3
	name = "sensor computer"
	desc = "The IBM series 10 computer retrofitted to work as a sensor computer for the ship. While somewhat dated it still serves its purpose."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "sensor_comp3"

/obj/structure/prop/almayer/missile_tube
	name = "\improper Mk 33 ASAT launcher system"
	desc = "Cold launch tubes that can fire a few varieties of missiles out of them The most common being the ASAT-21 Rapier IV missile used against satellites and other spacecraft and the BGM-227 Sledgehammer missile which is used for ground attack."
	icon = 'icons/Marine/almayer_props96.dmi'
	icon_state = "missiletubenorth"
	bound_width = 32
	bound_height = 96
	unacidable = 1

/obj/structure/prop/almayer/ship_memorial
	name = "slab of victory"
	desc = "A ship memorial dedicated to the triumphs of the USCM and the fallen marines of this ship. On the left there are grand tales of victory etched into the slab. On the right there is a list of famous marines who have fallen in combat serving the USCM."
	icon = 'icons/Marine/almayer_props64.dmi'
	icon_state = "ship_memorial"
	bound_width = 64
	bound_height = 32
	unacidable = 1

/obj/structure/prop/almayer/particle_cannon
	name = "\improper 0.75cm/140 Mark 74 General Atomics railgun"
	desc = "The Mark 74 Railgun is top of the line for space based weaponry. Capable of firing a round with a diameter of 3/4ths of a meter at 24 kilometers per second. It also is capable of using a variety of round types which can be interchanged at anytime with its newly designed feed system."
	icon = 'icons/obj/machines/artillery.dmi'
	icon_state = "1"
	unacidable = 1

/obj/structure/prop/almayer/name_stencil
	desc = "The name of the ship stenciled on the hull."
	icon = 'icons/Marine/almayer_props64.dmi'
	icon_state = "almayer0"
	density = 0 //dunno who would walk on it, but you know.
	unacidable = 1

	New()
		..()
		name = MAIN_SHIP_NAME

/obj/structure/prop/almayer/hangar_stencil
	name = "floor"
	desc = "A large number stenciled on the hangar floor used to designate which dropship it is."
	icon = 'icons/Marine/almayer_props96.dmi'
	icon_state = "dropship1"
	density = 0
	layer = 2.1




//---USS Almayer Lights -----//

/obj/machinery/light/almayer/New()
	..()
	switch(dir)
		if(1)	pixel_y = 23
		if(4)	pixel_x = 10
		if(8)	pixel_x = -10

// the smaller bulb light fixture

/obj/machinery/light/small/almayer/New()
	..()
	switch(dir)
		if(1)	pixel_y = 23
		if(4)	pixel_x = 10
		if(8)	pixel_x = -10




//------APCs ------//

/obj/machinery/power/apc/almayer
	icon = 'icons/obj/almayer.dmi'
	cell_type = /obj/item/weapon/cell/high
//------ Air Alarms -----//

/obj/machinery/alarm/almayer
	icon = 'icons/obj/almayer.dmi' // I made these really quickly because idk where they have their new air alarm ~Art

	New()
		..()
		switch(dir)
			if(1) pixel_y = 25
			if(2) pixel_y = 25

//------USS Almayer Tables ------//
/obj/structure/table/almayer
	icon = 'icons/obj/almayer.dmi'
	icon_state = "table"



//------- Cryobag Recycler -------//
// Wanted to put this in, but since we still have extra time until tomorrow and this is really simple thing. It just recycles opened cryobags to make it nice-r for medics.
// Also the lack of sleep makes me keep typing cyro instead of cryo. FFS ~Art

/obj/machinery/cryobag_recycler
	name = "cryogenic bag recycler"
	desc = "A small tomb like structure. Capable of taking in used and opened cryobags and refill the liner and attach new sealants."
	icon = 'icons/Marine/almayer_props.dmi'
	icon_state = "recycler"

	density = 1
	anchored = 1
	use_power = 1
	idle_power_usage = 20

//What is this even doing? Why is it making a new item?
/obj/machinery/cryobag_recycler/attackby(obj/item/W, mob/user) //Hope this works. Don't see why not.
	..()
	if (istype(W, /obj/item))
		if(W.name == "used stasis bag") //possiblity for abuse, but fairly low considering its near impossible to rename something without VV
			var/obj/item/bodybag/cryobag/R = new /obj/item/bodybag/cryobag //lets give them the bag considering having it unfolded would be a pain in the ass.
			R.add_fingerprint(user)
			user.temp_drop_inv_item(W)
			cdel(W)
			user.put_in_hands(R)
			r_TRU
	..()

/obj/structure/closet/basketball
	name = "athletic wardrobe"
	desc = "It's a storage unit for athletic wear."
	icon_state = "mixed"
	icon_closed = "mixed"

/obj/structure/closet/basketball/New()
	..()
	sleep(2)
	new /obj/item/clothing/under/shorts/grey(src)
	new /obj/item/clothing/under/shorts/black(src)
	new /obj/item/clothing/under/shorts/red(src)
	new /obj/item/clothing/under/shorts/blue(src)
	new /obj/item/clothing/under/shorts/green(src)
