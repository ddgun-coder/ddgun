/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5EAAD0DA
/// @DnDArgument : "code" "if (cid_id.skin == 2) {$(13_10)    draw_sprite_ext(spr_new_yellow4,-1,cid_id.x,cid_id.y,1,1,cid_id.YA,-1,1)$(13_10)}$(13_10)else {$(13_10)    draw_sprite_ext(spr_beam,-1,cid_id.x,cid_id.y,1,1,cid_id.YA,-1,1)$(13_10)}$(13_10)x = cid_id.x$(13_10)y = cid_id.y$(13_10)image_xscale = cid_id.big_val;$(13_10)image_yscale = cid_id.big_val;"
if (cid_id.skin == 2) {
    draw_sprite_ext(spr_new_yellow4,-1,cid_id.x,cid_id.y,1,1,cid_id.YA,-1,1)
}
else {
    draw_sprite_ext(spr_beam,-1,cid_id.x,cid_id.y,1,1,cid_id.YA,-1,1)
}
x = cid_id.x
y = cid_id.y
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;