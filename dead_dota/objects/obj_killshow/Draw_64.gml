/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surf1)) {
	surf1 = surface_create(64, 64);	
	surface_set_target(surf1);
	if (cid1 == global.my_cid_id) {
		draw_clear(c_dkgray);
	}
	else {
		draw_clear(c_black);
	}
	draw_sprite(cid1.face, 0, 32, 32);
	draw_sprite(cid1.draw_hat, cid1.hat_frame, 32, 32);
	draw_sprite(spr_kill_box, cid1.team, 0, 0);
	surface_reset_target();//살해자
}
if (!surface_exists(surf2)) { 
	surf2 = surface_create(64, 64);	
	surface_set_target(surf2);
	draw_clear(c_black);
	draw_sprite(cid2.face, 0, 32, 32);
	draw_sprite(cid2.draw_hat, cid2.hat_frame, 32, 32);
	draw_sprite(spr_kill_box, cid2.team, 0, 0);
	surface_reset_target();//피해자
}
draw_surface(surf1, 736, yy);
if (cid1.team == 1) {
	draw_set_color(c_yellow);
}
else {
	draw_set_color(c_red);	
}
draw_text_bold(736, yy + 70 , cid1.name);
draw_set_color(c_black);
draw_text(736, yy + 70 , cid1.name);

draw_sprite(spr_kill_arrow, 0, 800, yy);

draw_surface(surf2, 864, yy);
if (cid2.team == 1) {
	draw_set_color(c_yellow);
}
else {
	draw_set_color(c_red);	
}
draw_text_bold(864, yy + 70, cid2.name);
draw_set_color(c_black);
draw_text(864, yy + 70 , cid2.name);