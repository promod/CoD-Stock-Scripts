// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	character\_utility::setModelFromArray(xmodelalias\body_soviet_officer::main());
	character\_utility::attachFromArray(xmodelalias\head_allied::main());
	self.hatModel = "xmodel/sovietequipment_officercap";
	self attach(self.hatModel);
	self attach("xmodel/weapon_ppsh", "TAG_WEAPON_RIGHT");
	self.voice = "russian";
}

precache()
{
	character\_utility::precacheModelArray(xmodelalias\body_soviet_officer::main());
	character\_utility::precacheModelArray(xmodelalias\head_allied::main());
	precacheModel("xmodel/sovietequipment_officercap");
	precacheModel("xmodel/weapon_ppsh");
}
