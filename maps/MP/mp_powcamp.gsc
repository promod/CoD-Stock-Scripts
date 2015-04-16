main()
{
	setCullFog (0, 8000, .32, .36, .40, 0);
	ambientPlay("ambient_mp_powcamp");
	
	maps\mp\_load::main();
	maps\mp\mp_powcamp_fx::main();
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "conscript";
	game["russian_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_powcamp";

	//retrival settings
	level.obj["Camp Records"] = (&"RE_OBJ_CAMP_RECORDS");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_POWCAMP_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_POWCAMP_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_POWCAMP_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_POWCAMP_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_POWCAMP_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1552, 4464, 0);
		radio.angles = (0, 270, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-570, 3743, 34);
		radio.angles = (0, 8, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-107, 1741, 0);
		radio.angles = (0, 259, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1758, 42, 0);
		radio.angles = (0, 205, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-146, -825, 36);
		radio.angles = (0, 67, 0);
		radio.targetname = "hqradio";
	}
}



