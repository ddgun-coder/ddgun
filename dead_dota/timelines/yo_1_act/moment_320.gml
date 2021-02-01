effect_index = spr_none;
fishing = false;
var out = true;
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
		}
	}
}
if (out) {
	var mine = irandom(100);
	if (mine < 10) {
		server51_fish(obj_food, 100);
	}
	else {
		if (mine < 20) {
			server51_fish(obj_food1, 100);
		}
		else {
			if (mine < 80) {
				server51_fish(obj_food2, 100);
			}
			else {
				if (mine < 95) {
					server51_fish(obj_food3, 100);
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