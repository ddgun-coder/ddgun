// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hat_change2(num){
	global.hat = num;
	for (var i = 0; i < array_length(global.hat_array); i++) {
		if (num == global.hat_array[i]) {
			global.hat_show = i;	
		}
	}
}