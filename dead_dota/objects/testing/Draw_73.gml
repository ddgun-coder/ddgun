/// @description Insert description here
// You can write your code in this editor
if (targeting) {
	var num = array_length(targeting_array);
	for (var i = 0; i < num; i++) {
		var _ind = targeting_array[i];
		var _alpha = 0;
		if (_ind == cur_target) {
			_alpha = 1;
		}
		else {
			var _temp = 0;
			if (i < cur_target_index) {
				_temp = cur_target_index - i
			}
			else {
				_temp = cur_target_index - i + num;
			}
			_alpha = 1 / num * _temp / 2;
		}
		draw_sprite_ext(spr_targeting_arrow, 0, _ind.x, _ind.y - 10, 1, 1, 0, c_white, _alpha);
	}
}













