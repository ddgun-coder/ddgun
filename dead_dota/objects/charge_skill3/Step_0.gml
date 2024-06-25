image_xscale = cid_id.big_val * 3;
image_yscale = cid_id.big_val * 3;
x = cid_id.x;
y = cid_id.y;
image_angle = cid_id.temp_YA
skill_cancle()
if (cid_id.skin == 2) {
	sprite_index =  spr_red_charge3;
}
if (cid_id.skin == 3) {
	sprite_index =  spr_snowcharge3;
}
r += 10;
image_blend = merge_color(c_white, c_maroon, abs(sin(degtorad(r))));