if (surf == -1) {
	surf = surface_create(6, 64);	
}
surface_set_target(surf);
draw_sprite_part_ext(spr_sward,4,0,0, 6,(up / 15) * 64, 0, 0, cid_id.big_val,cid_id.big_val, -1, cid_id.alpha);//기포인트 바
surface_reset_target();
draw_surface_ext(surf, x, y, 1, 1, cid_id.YA, c_white, 1);