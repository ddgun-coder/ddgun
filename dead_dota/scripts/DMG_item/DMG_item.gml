// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DMG_item(D){
	if (buff_index != buff_timeb) {
		D /= 2;
	}
	else {
		D = D
	}
		for(var i = 0; i < MAX_ITME_BOX; i++) {
			switch(global.stats) {
			  case spr_stats1 :
				global.item_time[i] += floor(D * 15.6);
				break;
				default :
				global.item_time[i] += floor(D * 13.6);
				break;		
			}
			if(global.hat == spr_hat21) {
				global.item_time[i] += floor(D * 3.9);
			}
		}
	}

function Hit_item(D){
	for(var i = 0; i < MAX_ITME_BOX; i++) {
	    switch(global.stats) {
	        case spr_stats5 :
			global.item_time[i] += floor(D * 4.59);
			break;
			default :
			global.item_time[i] += floor(D * 3.4);
			break;		
	    }
		if(global.hat == spr_hat21) {
			global.item_time[i] += floor(D * 0.97);
		}
    }
}
			
	/*for(var i = 0; i < MAX_ITME_BOX; i++) {
	  if(global.stats == spr_stats1) {
		global.item_time[i] += floor(D * 15);
	}
	else {
		global.item_time[i] += floor(D * 8);
	}
	if(global.hat == spr_hat7) {
		global.item_time[i] -= floor(D * 4);
	}
}
}