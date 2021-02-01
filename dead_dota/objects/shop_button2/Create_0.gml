image_speed = 0;
xx = x
yy = y;
#macro mj 1
for(var j = 0; j < mj; j++) {
	for (var i = 0; i < 9; i++) {
		var num = j * 9 + i
		item[num] = {
			price : 1500
		}
		switch (num) {
			case 1:
				item[num].price = 3000;
			case 2:
				item[num].price = 5500;
			break;
			case 3:
				item[num].price = 6600;
			break;
			case 4:
				item[num].price = 6900;
			break;
			case 5:
				item[num].price = 7400;
			break;
			case 6:
				item[num].price = 4400;
			break;
			case 7:
				item[num].price = 5555;
			break;
			case 8:
				item[num].price = 35555;
			break;
		}
	}
}