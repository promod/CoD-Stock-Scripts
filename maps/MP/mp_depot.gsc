main()
{
	setCullFog (0, 7500, .32, .36, .40, 0);
	ambientPlay("ambient_mp_depot");

	maps\mp\_load::main();
	maps\mp\mp_depot_fx::main();

	game["allies"] = "british";
	game["axis"] = "german";

	game["british_soldiertype"] = "airborne";
	game["british_soldiervariation"] = "normal";
	game["german_soldiertype"] = "wehrmacht";
	game["german_soldiervariation"] = "normal";

	game["attackers"] = "allies";
	game["defenders"] = "axis";
	
	game["layoutimage"] = "mp_depot";

	bombzone_A = getent("bombzone_A", "targetname");
	bombzone_A.origin = bombzone_A.origin + (0, 0, -32);

	//retrival settings
	level.obj["Code Book"] = (&"RE_OBJ_CODE_BOOK");
	game["re_attackers"] = "allies";
	game["re_defenders"] = "axis";
	game["re_attackers_obj_text"] = (&"RE_OBJ_DEPOT_OBJ_ATTACKER");
	game["re_defenders_obj_text"] = (&"RE_OBJ_DEPOT_OBJ_DEFENDER");
	game["re_spectator_obj_text"] = (&"RE_OBJ_DEPOT_OBJ_SPECTATOR");
	game["re_attackers_intro_text"] = (&"RE_OBJ_DEPOT_SPAWN_ATTACKER");
	game["re_defenders_intro_text"] = (&"RE_OBJ_DEPOT_SPAWN_DEFENDER");
	
	//hq settings
	if (getcvar("g_gametype") == "hq")
	{
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-909, 2007, 21);
		radio.angles = (0, 57, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-2644, 1444, 12);
		radio.angles = (0, 1, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (207, 432, 12);
		radio.angles = (0, 312, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-987, 439, 12);
		radio.angles = (0, 228, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1271, -471, -24);
		radio.angles = (0, 317, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-2530, -573, 20);
		radio.angles = (0, 163, 0);
		radio.targetname = "hqradio";
		radio = spawn ("script_model", (0,0,0));
		radio.origin = (-1778, -2002, 40);
		radio.angles = (0, 97, 0);
		radio.targetname = "hqradio";
	}
}
