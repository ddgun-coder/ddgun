/// @description Insert description here
// You can write your code in this editor
set_surf_to_cid_id();
if (copied) {
	var rot_x, rot_y;
	var dr = copied_YA;
	with(cid_id) {
		rot_x = surf_xoffset * cos(degtorad(-dr)) - surf_yoffset * sin(degtorad(-dr));
		rot_y = surf_xoffset * sin(degtorad(-dr)) + surf_yoffset * cos(degtorad(-dr));
	}
	var draw_x = x - rot_x * cid_id.big_val;
	var draw_y = y - rot_y * cid_id.big_val;
	draw_surface_ext(copied_surf, draw_x, draw_y, cid_id.big_val, cid_id.big_val, copied_YA, image_blend, image_alpha);
	var dl = 55 - angle;
}