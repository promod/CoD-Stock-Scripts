main()
{
	precacheFX();
	spawnWorldFX();
}

precacheFX()
{
	level._effect["tigertankexplosion"]	= loadfx("fx/explosions/explosion1_nolight.efx");
	level._effect["smoke1"] = loadfx("fx/smoke/neuville_smoke1.efx");
}

spawnWorldFX()
{
	maps\mp\_fx::loopfx("smoke1", (-3438, -2045, 247), 0.4);
	maps\mp\_fx::loopfx("smoke1", (943, 514, 85), 0.4);
	maps\mp\_fx::loopfx("smoke1", (-1878, 212, 276), 0.4);
	maps\mp\_fx::loopfx("smoke1", (-1479, -3605, 223), 0.4);
}