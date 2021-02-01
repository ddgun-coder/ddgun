/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3043FEB2
/// @DnDArgument : "code" "if(team != global.team) {$(13_10)	var xxx = testing.x + irandom_range(-200, 200)$(13_10)	var yyy = testing.y + irandom_range(-200, 200)$(13_10)	server78_create_instace(fwiza_skill51, xxx, yyy);$(13_10)	var o = instance_create_depth(xxx, yyy, 200, fwiza_skill5);$(13_10)	o.cid_id = cid_id;$(13_10)	o.team = team;$(13_10)	o.cid = cid;$(13_10)}$(13_10)instance_destroy();"
if(team != global.team) {
	var xxx = testing.x + irandom_range(-200, 200)
	var yyy = testing.y + irandom_range(-200, 200)
	server78_create_instace(fwiza_skill51, xxx, yyy);
	var o = instance_create_depth(xxx, yyy, 200, fwiza_skill5);
	o.cid_id = cid_id;
	o.team = team;
	o.cid = cid;
}
instance_destroy();