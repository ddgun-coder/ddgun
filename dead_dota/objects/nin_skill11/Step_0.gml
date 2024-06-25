/// @description Insert description here
// You can write your code in this editor
x += lengthdir_x(25 * cid_id.big_val, YA - 90);
y += lengthdir_y(25 * cid_id.big_val, YA - 90);
image_angle += 15;
if (cid_id.skin == 1) {
	sprite_index =  sun_nin;
}
if (cid_id.skin == 2) {
	sprite_index =  spr_power_nin1;
}
if (cid_id.skin == 3) {
	sprite_index =  spr_cyber_nin1;
}
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
