if (!instance_exists(testing)) exit;
var cur_xview = global.window_width / 2 - (1024 / 2 - xstart);
var cur_yview = global.window_height - (768 - ystart) + view_get_yport(0);
draw_set_halign(fa_center);
draw_sprite(spr_SMS,0,cur_xview,cur_yview);
with(testing) {
	if (hp > 0) {
		var _len = m_hp + armor;
		if (armor + hp < m_hp) {
			var _ration = _len / m_hp;
			var _hp_len = (hp/_len) * 111 * _ration;
			draw_sprite_part(spr_hp,0,0,0,_hp_len,13,cur_xview + 12,cur_yview  + 8);//체력 바
			draw_sprite_part(spr_hp,10,0,0,(armor/_len) * 111 * _ration,13, cur_xview + 12 + _hp_len,cur_yview  + 8);//아머 바	
		}
		else {
			_len = armor + hp
			var _hp_len = (hp/_len)*111
			draw_sprite_part(spr_hp,0,0,0,(hp/_len)*111,13,cur_xview + 12,cur_yview  + 8);//체력 바
			draw_sprite_part(spr_hp,10,0,0,(armor/_len)*111,13, cur_xview + 12 + _hp_len,cur_yview  + 8);//아머 바
		}
	}
}
draw_sprite_part(spr_hp,1,0,0,(testing.mana/testing.m_mana)*111,13,cur_xview + 128,cur_yview  + 8);//마나 바 
draw_sprite_part(spr_hp,2,0,0,(testing.stemina/testing.m_stemina)*111,13,cur_xview + 244,cur_yview  + 8);//스테미너 바
draw_set_color(c_black);
draw_text_bold(cur_xview + 300, cur_yview, testing.stemina);
draw_text_bold(cur_xview + 180, cur_yview, testing.mana);
draw_text_bold(cur_xview + 180, cur_yview + 35, testing.gi);
draw_set_color(c_red);
var _str = "";
if (testing.armor > 0) {
	_str += string("{0} + {1}", testing.hp, round(testing.armor));
}
else {
	_str = string(testing.hp);
}
draw_text_bold_color(cur_xview + 60, cur_yview, _str, c_black, c_red);
draw_set_color(c_yellow);
draw_text(cur_xview+ 300, cur_yview, testing.stemina);
draw_set_color(c_white);
draw_text(cur_xview + 180, cur_yview + 35, testing.gi);
draw_set_color(c_aqua);
draw_text(cur_xview + 180, cur_yview, testing.mana);
if (testing.protection == true) {
	var scale = testing.protection_val / testing.protection_val_max;
	var scale2 = testing.protection_val_max / 20;
	var _len = scale * scale2 * 58;
	draw_sprite_ext(spr_SMS_protect, 0, cur_xview + 9, y + cur_yview + 5, scale2, 1, 0, c_white, 1);
	draw_sprite_part(spr_hp, 9, 0, 0, _len, 13, -scale2 * 64 + cur_xview + 11, y + cur_yview + 8);
	draw_text_bold_color(-scale2 * 32 + cur_xview + 2, y + cur_yview + 2, testing.protection_val, c_blue, c_black);
}
else if (testing.protect_break == true) {
	var scale = testing.protection_val / testing.protection_val_max;
	var scale2 = testing.protection_val_max / 20;
	var _len = scale * scale2 * 58;
	draw_sprite_ext(spr_SMS_protect, 1, cur_xview + 9, y + cur_yview + 5, scale2, 1, 0, c_white, 1);
	draw_sprite_part(spr_hp, 9, 0, 0, _len, 13, -scale2 * 64 + cur_xview + 11, y + cur_yview + 8);
	draw_text_bold_color(-scale2 * 32 + cur_xview + 2, y + cur_yview + 2, testing.protection_val, c_blue, c_black);
}

draw_set_color(c_lime);
draw_sprite_part(spr_hp,3,0,0,(testing.aexp/testing.m_aexp)*313,6,cur_xview + 25,cur_yview + 24);//경험치 바
draw_sprite_part(spr_hp,4,0,0,(testing.gi/testing.m_gi)*313,4,cur_xview + 25,cur_yview + 32);//기포인트 바
