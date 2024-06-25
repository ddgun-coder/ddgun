/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1EB04100
/// @DnDInput : 2
/// @DnDArgument : "expr" "testing.YA"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "var_1" "team"
image_angle = testing.YA;
team = -1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77E3F0A7
/// @DnDArgument : "code" "if (global.hat = spr_hat22) {$(13_10)    skill_create(8)$(13_10)}$(13_10)else {$(13_10)	skill_create(4)$(13_10)}$(13_10)$(13_10)if (instance_number(object_index) < 2) {$(13_10)	audio_play_sound(die_3_sound,9,false);$(13_10)}$(13_10)$(13_10)cid = 1;$(13_10)dmg = 19;$(13_10)cid_id  = asset_get_index("testing" + string(cid));"
if (global.hat = spr_hat22) {
    skill_create(8)
}
else {
	skill_create(4)
}

if (instance_number(object_index) < 2) {
	audio_play_sound(die_3_sound,9,false);
}

cid = 1;
dmg = 19;
cid_id  = asset_get_index("testing" + string(cid));