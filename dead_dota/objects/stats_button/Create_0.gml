#macro MAX_HEIGHT 4
height = 0; 
image_speed = 0
depth = -1200 ;
stats_array = [spr_stats1, spr_stats2, spr_stats3, spr_stats4, spr_stats5, spr_stats6]

function stats_list_draw(i, draw_y){
	draw_sprite(spr_statsdraw1, i , x, draw_y);
	if (stats_array[i] == global.stats) {
		draw_sprite(spr_stats_select, 0, x, draw_y);
	}
}
