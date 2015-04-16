main()
{
	precacheFX();
	spawnWorldFX();
}

precacheFX()
{
	level._effect["smoke1"] = loadfx("fx/smoke/neuville_smoke1.efx");
}

spawnWorldFX()
{
	maps\mp\_fx::loopfx("smoke1", (-15257, 3589, 26), 0.4);
}