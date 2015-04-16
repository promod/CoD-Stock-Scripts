main()
{
	setCullFog (0, 8000, .32, .36, .40, 0);
	ambientPlay("ambient_mp_dawnville");

	maps\mp\_load::main();
	maps\mp\mp_dawnville_fx::main();
	
	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "normal";
	game["german_soldiertype"] = "fallschirmjagercamo";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_dawnville";

	//retrival settings
	level.obj["Field Radio"] = (&"RE_OBJ_FIELD_RADIO");
	game["re_attackers"] = "axis";
	game["re_defenders"] = "allies";
	game["re_attackers_obj_text"] = (&"RE_OBJ_DAWNVILLE_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_DAWNVILLE_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_DAWNVILLE_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_DAWNVILLE_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_DAWNVILLE_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (315, -18121, 172);
		radio.angles = (0, 353, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (184, -16100, 16);
		radio.angles = (0, 29, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (2952, -15537, -51);
		radio.angles = (0, 180, 5);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1168, -18616, 64);
		radio.angles = (0, 90, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1461, -16249, -36);
		radio.angles = (356, 289, 1);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-674, -15032, -19);
		radio.angles = (350, 0, 0);
		radio.targetname = "hqradio";
	}
}
