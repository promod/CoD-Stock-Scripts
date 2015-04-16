main()
{
	setCullFog (0, 6000, 0.8, 0.8, 0.8, 0);
	ambientPlay("ambient_mp_pavlov");
	
	maps\mp\_load::main();
	maps\mp\mp_pavlov_fx::main();
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "conscript";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "axis";
	game["defenders"] = "allies";

	game["layoutimage"] = "mp_pavlov";

	//retrival settings
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_PAVLOV_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_PAVLOV_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_PAVLOV_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_PAVLOV_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_PAVLOV_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-9494, 10061, 186);
		radio.angles = (0, 90, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-10385, 11784, -32);
		radio.angles = (0, 114, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-7196, 10171, -104);
		radio.angles = (0, 189, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-9200, 11912, 103);
		radio.angles = (0, 249, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-9498, 8797, -8);
		radio.angles = (0, 96, 0);
		radio.targetname = "hqradio";
	}
}
