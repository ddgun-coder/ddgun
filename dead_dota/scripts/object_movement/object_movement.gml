// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function object_movement(){

}

function move_to_YA(_speed, YA) {
	x += lengthdir_x(_speed * cid_id.big_val,YA-90);
	y += lengthdir_y(_speed * cid_id.big_val,YA-90);
}
