/// @description Insert description here
// You can write your code in this editor
/*
if (surf1 == -1) {
	surf1 = surface_create(64, 64);	
	surface_set_target(surf1);
	draw_clear(c_black);
	draw_sprite(cid1.face, 0, 32, 32);
	draw_sprite(cid1.hat, cid1.hat_frame, 32, 32);
	draw_sprite(spr_kill_box, cid1.team, 0, 0);
	surface_reset_target();//살해자
}
if (surf2 == -1) { 
	surf2 = surface_create(64, 64);	
	surface_set_target(surf2);
	draw_clear(c_black);
	draw_sprite(cid2.face, 0, 32, 32);
	draw_sprite(cid2.hat, cid2.hat_frame, 32, 32);
	draw_sprite(spr_kill_box, cid2.team, 0, 0);
	surface_reset_target();//피해자
}