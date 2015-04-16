main()
{
	setCullFog (0, 8000, 0.8, 0.8, 0.8, 0);
	ambientPlay("ambient_mp_pavlov");
	
	maps\mp\_load::main();
	maps\mp\mp_stalingrad_fx::main();
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "conscript";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	game["layoutimage"] = "mp_stalingrad";

	//retrival settings

	level.obj["Artillery Map"] = (&"RE_OBJ_ARTILLERY_MAP");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_HARBOR_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_HARBOR_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_HARBOR_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_HARBOR_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_HARBOR_SPAWN_DEFENDER");

//hq settings
	if (getcvar("g_gametype") != "hq")
	{
		radios = getentarray ("hqradio","targetname");
		for (i=0;i<radios.size;i++)
			radios[i] hide();
	}
}
