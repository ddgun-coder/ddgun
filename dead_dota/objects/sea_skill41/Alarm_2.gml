/// @description Insert description here
// You can write your code in this editor
alarm[2] = 1;
if (delayb == -1) {
	with(sea_skill44) {
		if(cid == other.cid) {
			if (num == other.num) {
				instance_destroy();
			}
		}
	}
	num--;
}
else {
	var t = instance_create_depth(x, y, depth, sea_skill44);
	t.cid = cid;
	t.num = num;
	num++;
}