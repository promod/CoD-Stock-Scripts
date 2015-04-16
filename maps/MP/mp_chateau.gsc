main()
{
	setExpFog(0.00001, 0, 0, 0, 0);
	ambientPlay("ambient_mp_chateau");

	maps\mp\_load::main();
	//maps\mp\mp_chateau_fx::main();

	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "airborne";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_chateau";

	//retrival settings
	level.obj["Spy Records"] = (&"RE_OBJ_SPY_RECORDS");
	level.obj["Artillery Map"] = (&"RE_OBJ_ARTILLERY_MAP");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_CHATEAU_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_CHATEAU_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_CHATEAU_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_CHATEAU_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_CHATEAU_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-711, 1204, 158);
		radio.angles = (0, 299, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-61, 414, 203);
		radio.angles = (0, 133, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (424, 1689, 203);
		radio.angles = (0, 325, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1203, 180, 330);
		radio.angles = (0, 8, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (2032, 868, 188.5);
		radio.angles = (0, 210, 0);
		radio.targetname = "hqradio";
	}
}
