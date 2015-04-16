main()
{
	setCullFog (0, 5000, .32, .36, .40, 0 );
	ambientPlay("ambient_mp_hurtgen");

	maps\mp\_load::main();
	maps\mp\mp_hurtgen_fx::main();

	game["allies"] = "american";
	game["axis"] = "german";

	game["american_soldiertype"] = "airborne";
	game["american_soldiervariation"] = "winter";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_hurtgen";

	//retrival settings
	level.obj["V-2 Rocket Schedule"] = (&"RE_OBJ_ROCKET_SCHEDULE");
	level.obj["Artillery Map"] = (&"RE_OBJ_ARTILLERY_MAP");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_HURTGEN_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_HURTGEN_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_HURTGEN_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_HURTGEN_SPAWN_ATTAKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_HURTGEN_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-3504, 932, -46);
		radio.angles = (0, 98, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-484, 1305, -61);
		radio.angles = (0, 106, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (125, -628, -198);
		radio.angles = (0, 106, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (2384, -2255, -230.5);
		radio.angles = (0, 349, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (3682, 823, -148);
		radio.angles = (359, 296, 2);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (4480, -2106, 74);
		radio.angles = (0, 180, 0);
		radio.targetname = "hqradio";
	}
}
