main()
{
	setExpFog(0.00025, .32, .36, .40, 0);
	ambientPlay("ambient_mp_dawnville");

	maps\mp\_load::main();
	maps\mp\mp_neuville_fx::main();

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_neuville";

	//retrival settings
	level.obj["Artillery Map"] = (&"RE_OBJ_ARTILLERY_MAP");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"PATCH_1_3_RE_OBJ_NEUVILLE_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"PATCH_1_3_RE_OBJ_NEUVILLE_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"PATCH_1_3_RE_OBJ_NEUVILLE_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"PATCH_1_3_RE_OBJ_NEUVILLE_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"PATCH_1_3_RE_OBJ_NEUVILLE_SPAWN_DEFENDER");
	
	//hq settings
	
	if (getcvar("g_gametype") != "hq")
	{
		radios = getentarray ("hqradio","targetname");
		for (i=0;i<radios.size;i++)
			radios[i] hide();
	}
	
	/*
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-14095, 2295, 0);
		radio.angles = (0, 8, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-16093, 2629, 169);
		radio.angles = (0, 308, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-15894, 3352, -32);
		radio.angles = (0, 68, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-15787, 4037, 148);
		radio.angles = (0, 263, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-15686, 4942, -14);
		radio.angles = (0, 134, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-14077, 5168, -24);
		radio.angles = (0, 143, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-14436, 4133, 160);
		radio.angles = (0, 323, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-14123, 3730, -26);
		radio.angles = (0, 308, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-13286, 3903, 0);
		radio.angles = (0, 263, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-12155, 3867, -74);
		radio.angles = (0, 233, 0);
		radio.targetname = "hqradio";
	}
	*/
}
