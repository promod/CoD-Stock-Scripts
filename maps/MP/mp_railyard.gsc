main()
{
	setCullFog (0, 8000, 0.8, 0.8, 0.8, 0);
	ambientPlay("ambient_mp_railyard");

	maps\mp\_load::main();
	maps\mp\mp_railyard_fx::main();
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "veteran";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "winter";
	
	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_railyard";

	//retrival settings
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";
	game["re_attackers_obj_text"] = (&"RE_OBJ_RAILYARD_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_RAILYARD_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_RAILYARD_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_RAILYARD_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_RAILYARD_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1235, 2734, -28);
		radio.angles = (0, 97, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-2296, 1512, 36);
		radio.angles = (0, 342, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-442, 1877, 42);
		radio.angles = (0, 266, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-496, 445, 82);
		radio.angles = (0, 17, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-2704, 102, 208);
		radio.angles = (0, 43, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1524, -1120, 44);
		radio.angles = (0, 275, 0);
		radio.targetname = "hqradio";
	}
}
