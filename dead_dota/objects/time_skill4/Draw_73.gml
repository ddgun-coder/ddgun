var to_id;
if (cid == global.my_cid) {
	to_id = testing;
}
else {
	to_id = cid_id;
}
var xscale = point_distance(x, y, to_id.x, to_id.y) / 32;
var color = merge_color(c_white, c_red, (xscale - 1) / 2);
draw_sprite_ext(spr_pillar_chain, 0, x, y, 1, xscale, point_direction(x, y, to_id.x, to_id.y) + 90, c_black, 0.8);


