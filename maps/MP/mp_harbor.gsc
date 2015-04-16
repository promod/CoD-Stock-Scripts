main()
{
//	setCullFog (0, 5500, .32, .36, .40, 0); //stormyfogged sky fog color
	setCullFog (0, 6500, .8, .8, .8, 0); //pavlovtest sky color
	ambientPlay("ambient_mp_harbor");

	maps\mp\_load::main();
	//maps\mp\mp_railyard_fx::main();
	
	game["allies"] = "russian";
	game["axis"] = "german";

	game["russian_soldiertype"] = "conscript";
	game["russian_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["layoutimage"] = "mp_harbor";

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
	if (getcvar("g_gametype") == "hq")
	{
		radio = [];
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-11600, -7600, 32);
		radio.angles = (0, 135, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-9774, -8612, 8);
		radio.angles = (0, 8, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-9112, -6657, 0);
		radio.angles = (0, 137, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-8519, -8778, 36);
		radio.angles = (0, 17, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-8385, -7940, 0);
		radio.angles = (0, 51, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-6932, -7395, 0);
		radio.angles = (0, 153, 0);
		radio.targetname = "hqradio";
	}
}
