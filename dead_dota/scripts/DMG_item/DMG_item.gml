// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMG_item(D){
	for(var i = 0; i < MAX_ITME_BOX; i++) {
		global.item_time[i] += floor(D * 10);
	}
}