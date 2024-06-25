/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6CC682CE
/// @DnDArgument : "code" "YA = cid_id.YA;$(13_10)var idd;$(13_10)idd = instance_create_depth(x, y, depth - 1, trol_skill_hide_down);$(13_10)with(idd) {$(13_10)   cid = other.cid;$(13_10)   cid_id = other.cid_id;$(13_10)   image_angle = other.image_angle - 90;$(13_10)}$(13_10)idd = instance_create_depth(x, y, depth - 1, trol_skill_hide_up);$(13_10)with(idd) {$(13_10)   cid = other.cid;$(13_10)   cid_id = other.cid_id;$(13_10)   image_angle = other.image_angle - 90;$(13_10)}"
YA = cid_id.YA;
var idd;
idd = instance_create_depth(x, y, depth - 1, trol_skill_hide_down);
with(idd) {
   cid = other.cid;
   cid_id = other.cid_id;
   image_angle = other.image_angle - 90;
}
idd = instance_create_depth(x, y, depth - 1, trol_skill_hide_up);
with(idd) {
   cid = other.cid;
   cid_id = other.cid_id;
   image_angle = other.image_angle - 90;
}