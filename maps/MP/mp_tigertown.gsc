main()
{
	//setExpFog(0.00025, .32, .36, .40, 0);
	ambientPlay("ambient_mp_dawnville");

	//hq settings
	if ( (getcvar("g_gametype") != "hq") && (getcvar("g_gametype") != "hq2") )
	{
		radios = getentarray ("hqradio","targetname");
		for (i=0;i<radios.size;i++)
			radios[i] hide();
	}

	maps\mp\_load::main();
	maps\mp\mp_tigertown_fx::main();

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_tigertown";

	//retrival settings
	level.obj["beacon"] = (&"PATCH_1_3_BEACON");
	precacheString(&"PATCH_1_3_BEACON");
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";
	game["re_attackers_obj_text"] = (&"PATCH_1_3_BOCAGE_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"PATCH_1_3_BOCAGE_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"PATCH_1_3_BOCAGE_OBJ_SPECTATOR");
}

	
