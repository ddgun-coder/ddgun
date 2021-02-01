/// @description Insert description here
// You can write your code in this editor
if (sturn <= 0) { 
	if (buff_index != spr_wing1) {
		if (global.team != other.team or (other.team == 2 and other.cid != global.my_cid)) {
			buff_index = buff_see2;
			buff_time = 160;
			color = c_gray;
			temp_YA = YA;
			server77_equal(serve_val.color, c_gray, buffer_f32);
		}
	}
}
DMG(10, n_attack_area, 40);