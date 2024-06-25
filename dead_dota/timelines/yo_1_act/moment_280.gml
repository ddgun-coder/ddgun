effect_index = spr_none;
fishing = false;
var out = true;
cancle_able = false;
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
for (var i = 0; i < instance_number(obj_absfish); ++i;)
{
	if (!out) break;
	var fish_id = instance_find(obj_absfish,i)
	if (distance_to_object(fish_id) < 400) {
		switch(fish_id.object_index) {
			case obj_fish2:
				server51_fish(obj_food6, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish19:
				server51_fish(obj_food7, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish10:
			case obj_fish43:
				server51_fish(obj_food8, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish11:
				server51_fish(obj_food9, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish20:
				server51_fish(obj_food10, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish22:
				server51_fish(obj_food11, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish24:
				server51_fish(obj_food12, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish26:
				server51_fish(obj_food13, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish32:
				server51_fish(obj_food14, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish48:
				server51_fish(obj_food15, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish49:
				server51_fish(obj_food16, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish53:
				server51_fish(obj_food17, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish57:
				server51_fish(obj_food18, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish56:
				server51_fish(obj_food19, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish36:
				server51_fish(obj_food20, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish35:
				server51_fish(obj_food21, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish18:
				server51_fish(obj_food22, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish40:
				server51_fish(obj_food23, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish34:
				server51_fish(obj_food24, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish51:
				server51_fish(obj_food25, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish13:
				server51_fish(obj_food26, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish33:
				server51_fish(obj_food27, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;
			case obj_fish1:
				server51_fish(obj_food28, 100);
				with(fish_id){
					instance_destroy();
				}
				out = false;
			break;		
		}
	}
}

if (out) {
	var mine = irandom(100);
	if (mine < 10) {
		server51_fish(obj_food2, 100);
	}
	else {
		if (mine < 20) {
			server51_fish(obj_food2, 100);
		}
		else {
			if (mine < 80) {
				server51_fish(obj_food3, 100);
			}
			else {
				if (mine < 95) {
					var what = irandom(22);
					switch(what) {
						case 0:
							server51_fish(obj_food16, 100);
						break;
						case 1:
							server51_fish(obj_food6, 100);
						break;
						case 2:
							server51_fish(obj_food7, 100);
						break;
						case 3:
							server51_fish(obj_food8, 100);
						break;
						case 4:
							server51_fish(obj_food9, 100);
						break;
						case 5:
							server51_fish(obj_food10, 100);
						break;
						case 6:
							server51_fish(obj_food11, 100);
						break;
						case 7:
							server51_fish(obj_food12, 100);
						break;
						case 8:
							server51_fish(obj_food13, 100);
						break;
						case 9:
							server51_fish(obj_food14, 100);
						break;
						case 10:
							server51_fish(obj_food15, 100);
						break;
						case 11:
							server51_fish(obj_food17, 100);
						break;
						case 12:
							server51_fish(obj_food18, 100);
						break;
						case 13:
							server51_fish(obj_food19, 100);
						break;
						case 14:
							server51_fish(obj_food20, 100);
						break;
						case 15:
							server51_fish(obj_food21, 100);
						break;
						case 16:
							server51_fish(obj_food23, 100);
						break;
						case 17:
							server51_fish(obj_food24, 100);
						break;
						case 18:
							server51_fish(obj_food25, 100);
						break;
						case 19:
							server51_fish(obj_food26, 100);
						break;
						case 20:
							server51_fish(obj_food27, 100);
						break;
						case 21:
							server51_fish(obj_food28, 100);
						break;
					}
				}
				else {
					if (mine < 99) {
						server51_fish(obj_food4, 100);
					}
					else {
						server51_fish(obj_food5, 100);
					}
				}
			}
		}
	}
}