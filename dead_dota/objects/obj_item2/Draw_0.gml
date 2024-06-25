if (global.stats = spr_stats1 or global.stats= spr_stats2) {
	item_draw(6);
	draw_sprite(spr_item_num,6,x,y)
}
else {
	if (global.item[6] != spr_none) {
		prt_val_add(0 ,1000);
		global.item[6] = spr_none;
	}	
}