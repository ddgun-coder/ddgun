/// @description Insert description here
// You can write your code in this editor
if (instance_exists(testing)) {
	for (var i = 0; i < global.achievement_num; i++) {
		if (global.achievement[i].comple == false) {
			switch(i) {
				case 0 :
					if (testing.live == 0) {
						achi_get(i);
					}
				break;
				case 2 :
					if (testing.live == 0 and testing.level == 3) {
						achi_get(i);
					}
				break;
				case 3 :
					if (global.hat == spr_hat) {
						achi_get(i);
					}
				break;
				case 7 :
					if (testing.live == 0 and testing.buff_index = buff_bwiza2) {
						achi_get(i);
					}
				break;
				case 9 :
					if (global.surgery_num > 9) {
						achi_get(i);
					}
				break;
			}
		}
	}
}


