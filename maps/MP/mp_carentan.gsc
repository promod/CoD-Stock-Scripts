main()
{
	setCullFog (0, 16500, 0.7, 0.85, 1.0, 0);
	ambientPlay("ambient_mp_carentan");

	maps\mp\_load::main();
	maps\mp\mp_carentan_fx::main();

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagergrey";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_carentan";

	//retrival settings
	level.obj["Code Book"] = (&"RE_OBJ_CODE_BOOK");
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_CARENTAN_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_CARENTAN_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_CARENTAN_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1198, 155, 18);
		radio.angles = (0, 257, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (100, 601, 0);
		radio.angles = (0, 352, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-678, 430, 6);
		radio.angles = (354, 234, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-842, 2084, 179);
		radio.angles = (0, 290, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (525, 1975, -118);
		radio.angles = (0, 267, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1962, 2293, -24);
		radio.angles = (0, 245, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (837, 3637, -16);
		radio.angles = (0, 90, 0);
		radio.targetname = "hqradio";
	}
}