// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	self setModel("xmodel/character_airborne_winter_medic");
	character\_utility::attachFromArray(xmodelalias\head_allied::main());
	self.hatModel = "xmodel/USAirborneHelmet_medic";
	self attach(self.hatModel);
	if (character\_utility::useOptionalModels())
	{
		self attach("xmodel/USEquipment_Compass", "TAG_BREASTPOCKET_RIGHT");
		self attach("xmodel/USEquipment_Pouch1", "TAG_HELMETSIDE");
		self.helmetSideModel = "xmodel/USEquipment_Pouch1";
	}
	self.voice = "american";
}

precache()
{
	precacheModel("xmodel/character_airborne_winter_medic");
	character\_utility::precacheModelArray(xmodelalias\head_allied::main());
	precacheModel("xmodel/USAirborneHelmet_medic");
	if (character\_utility::useOptionalModels())
	{
		precacheModel("xmodel/USEquipment_Compass");
		precacheModel("xmodel/USEquipment_Pouch1");
	}
}
