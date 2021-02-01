arm_all_normal();
var xx;
var yy;

while(true) {
	xx = irandom(room_width - 100) + 50;
	yy = irandom(room_height - 100) + 50;
	if(place_free(xx,yy)) {
		if (!place_meeting(xx, yy, only_first)){
			testing.x = xx;
			testing.y = yy;
			break;
		}
	}
}
server202_sound(ddr_3_sound);
a_cooltime = 80;
left_arm_yscale = -1;
right_arm_yscale = -1;
server78_create_instace(ddr_skill3, x, y)
arm_type = "attack"