main()
{
	setCullFog (0, 4500, .32, .36, .40, 0);
	ambientPlay("ambient_mp_rocket");

	maps\mp\_load::main();
	maps\mp\mp_rocket_fx::main();

	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "commando";
	game["british_soldiervariation"] = "winter";
	game["german_soldiertype"] = "waffen";
	game["german_soldiervariation"] = "winter";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_rocket";

	//retrival settings
	level.obj["Artillery Map"] = (&"RE_OBJ_ARTILLERY_MAP");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_ROCKET_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_ROCKET_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_ROCKET_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_ROCKET_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_ROCKET_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (8724, 1209, 310);
		radio.angles = (0, 92, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (9162, 3604, 290);
		radio.angles = (0, 195, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (10617, 4454, 428);
		radio.angles = (0, 179, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (9192, 6057, 338);
		radio.angles = (0, 164, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (9996, 5875, 160);
		radio.angles = (0, 253, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (10598, 6148, 205);
		radio.angles = (0, 269, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (11977, 6286, 452);
		radio.angles = (0, 254, 0);
		radio.targetname = "hqradio";
	}
}





