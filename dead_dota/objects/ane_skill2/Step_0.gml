x = cid_id.x;
y = cid_id.y;
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 3 * bb;
image_yscale = cid_id.big_val * 3 * bb;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}
if (time % 2 != 0) {
	solid = false;
}
else {
	solid = true;
}
time++;
if (move) {
	bb -= 0.05;
	if (bb <= 0) {
		if (cid == global.my_cid) {
			testing.a_cooltime = 1;	
		}
		instance_destroy();	
	}
}