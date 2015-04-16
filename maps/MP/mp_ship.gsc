main()
{
	setCullFog (0, 7500, .32, .36, .40, 0);
	ambientPlay("ambient_mp_ship");

	precacheModel("xmodel/vehicle_german_yacht_static");
	maps\mp\_load::main();
	
	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "commando";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "kriegsmarine";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";

	game["layoutimage"] = "mp_ship";

	//retrival settings
	level.obj["Patrol Logs"] = (&"RE_OBJ_PATROL_LOGS");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_SHIP_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_SHIP_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_SHIP_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_SHIP_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_SHIP_SPAWN_DEFENDER");
	
	if (getcvar("g_gametype") != "re")
	{
		dock = getentarray ("dock","targetname");
		for (i=0;i<dock.size;i++)
			if (isdefined (dock[i]))
				dock[i] delete();
		boat = getent ("boat","targetname");
		if (isdefined (boat))
			boat delete();
	}
	else
	{
		rail = getentarray ("rail","targetname");
		for (i=0;i<rail.size;i++)
			rail[i] delete();
	}
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (1887, 63, -64);
		radio.angles = (0, 187, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (3158, -119, 480);
		radio.angles = (0, 282, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (4486, 64, 56);
		radio.angles = (0, 6, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (5455, 65, 352);
		radio.angles = (0, 313, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (6859, -3, -64);
		radio.angles = (0, 320, 0);
		radio.targetname = "hqradio";
	}
}