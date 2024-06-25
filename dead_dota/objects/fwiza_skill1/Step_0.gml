/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E4ED10E
/// @DnDArgument : "code" "x = cid_id.x$(13_10)y = cid_id.y$(13_10)image_angle = cid_id.YA;$(13_10)if (cid_id.skin == 1) {$(13_10)	sprite_index =  spr_fwiza_bam1;$(13_10)}$(13_10)image_xscale = cid_id.big_val * 2;$(13_10)image_yscale = cid_id.big_val * 2;$(13_10)if (cid_id == global.my_cid_id) {$(13_10)	testing.a_possible = false;	$(13_10)}$(13_10)$(13_10)if(cid_id.sturn > 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)"
x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
if (cid_id.skin == 1) {
	sprite_index =  spr_fwiza_bam1;
}
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
if (cid_id == global.my_cid_id) {
	testing.a_possible = false;	
}

if(cid_id.sturn > 0) {
	instance_destroy();
}