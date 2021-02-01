/// @description Insert description here
// You can write your code in this editor
if !(place_meeting(x, y, t_skill3)) {
	if (sturn <= 0) {
		sturn = 100;
		hp = 1;
		buff_index = buff_apple3;
		buff_time = 200;
		prt_val_set(Val.mp, 0);
		prt_val_set(Val.gi, 0);
	}
}