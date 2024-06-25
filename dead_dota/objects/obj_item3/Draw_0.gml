if (global.stats = spr_stats1) {
	item_draw(7);
	draw_sprite(spr_item_num,7,x,y)
}
else {
	if (global.item[7] != spr_none) {
		prt_val_add(0 ,1000);
		global.item[7] = spr_none;
	}		
}