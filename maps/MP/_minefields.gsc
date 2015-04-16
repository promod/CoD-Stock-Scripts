minefields()
{
	minefields = getentarray("minefield", "targetname");
	if (minefields.size > 0)
	{
		level._effect["mine_explosion"] = loadfx ("fx/impacts/newimps/minefield.efx");
	}
	
	for(i = 0; i < minefields.size; i++)
	{
		minefields[i] thread minefield_think();
	}	
}

minefield_think()
{
	while (1)
	{
		self waittill ("trigger",other);
		
		if(isPlayer(other))
			other thread minefield_kill(self);
	}
}

minefield_kill(trigger)
{
	if(isDefined(self.flag))
		return;
		
	self.flag = true;
	self playsound ("minefield_click");

	wait(.5);
	wait(randomFloat(.5));

	if(self istouching(trigger))
	{
		origin = self getorigin();
		org = self.origin;
		range = 4;
		maxdamage = 2000;
		mindamage = 50;
		
		playfx ( level._effect["mine_explosion"], origin);
		radiusDamage(origin, range, maxdamage, mindamage);
		level thread playSoundinSpace ("explo_mine", org);
	}
	self.flag = undefined;
}

playSoundinSpace (alias, origin)
{
	org = spawn ("script_model",origin);
	wait 0.05;
	org playsound (alias);
	wait 6;
	org delete();
}