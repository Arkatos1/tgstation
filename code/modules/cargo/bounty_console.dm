#define PRINTER_TIMEOUT 10

/obj/machinery/computer/bounty
	name = "Nanotrasen bounty console"
	desc = "Used to check and claim bounties offered by Nanotrasen"
	icon_screen = "bounty"
	circuit = /obj/item/circuitboard/computer/bounty
	light_color = "#E2853D" //orange
	ui_x = 700
	ui_y = 700
	var/printer_ready = 0 //cooldown var

/obj/machinery/computer/bounty/Initialize()
	. = ..()
	if(!GLOB.bounties_list.len)
		setup_bounties()
	printer_ready = world.time + PRINTER_TIMEOUT

/obj/machinery/computer/bounty/proc/print_paper()
	new /obj/item/paper/bounty_printout(loc)

/obj/item/paper/bounty_printout
	name = "paper - Bounties"

/obj/item/paper/bounty_printout/Initialize()
	. = ..()
	info = "<h2>Nanotrasen Cargo Bounties</h2></br>"
	update_icon()

	for(var/datum/bounty/B in GLOB.bounties_list)
		if(B.claimed)
			continue
		info += {"<h3>[B.name]</h3>
		<ul><li>Reward: [B.reward_string()]</li>
		<li>Completed: [B.completion_string()]</li></ul>"}

/obj/machinery/computer/bounty/ui_interact(mob/user, ui_key = "main", datum/tgui/ui = null, force_open = FALSE, \
									datum/tgui/master_ui = null, datum/ui_state/state = GLOB.default_state)
	ui = SStgui.try_update_ui(user, src, ui_key, ui, force_open)
	if(!ui)
		ui = new(user, src, ui_key, "bounty_console", name, ui_x, ui_y, master_ui, state)
		ui.open()

/obj/machinery/computer/bounty/ui_data(mob/user)
	var/list/data = list()
	var/datum/bank_account/D = SSeconomy.get_dep_account(ACCOUNT_CAR)
	data["credits"] = D ? D.account_balance : 0
	data["available_bounties"] = list()
	data["completed_bounties"] = list()
	for(var/datum/bounty/B in GLOB.bounties_list)
		var/list/bounty_data = list(
			name = B.name,
			description = B.description,
			claimed = B.claimed,
			can_claim = B.can_claim(),
			high_priority = B.high_priority,
			reward = B.reward_string(),
			units = B.completion_string(),
			ref = REF(B)
		)
		if(B.claimed)
			data["completed_bounties"] += list(bounty_data)
		else
			data["available_bounties"] += list(bounty_data)
	return data

/obj/machinery/computer/bounty/ui_act(action, list/params)
	if(..())
		return

	switch(action)
		if("print")
			if(printer_ready < world.time)
				printer_ready = world.time + PRINTER_TIMEOUT
				print_paper()
				playsound(src, "terminal_type", 25, FALSE)
				. = TRUE
		if("claim")
			var/datum/bounty/B = locate(params["ref"]) in GLOB.bounties_list
			if(B)
				B.claim()
				playsound(src, "terminal_type", 25, FALSE)
				. = TRUE

#undef PRINTER_TIMEOUT
