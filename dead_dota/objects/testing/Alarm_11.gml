alarm_set(11,20);
global.prt_key=irandom_range(1,10000);
if (sturn >0) {
	if (global.hat != spr_hat48 and level == 3) {
		keyboard_string += "쿨럭"
	}
}
if (global.hat == spr_hat5 or global.hat == spr_level5_hat1)
{
	hat_xscale *= -1
	server77_equal(serve_val.hat_xscale, hat_xscale, buffer_s8);
}

if (global.hat == spr_hat22 and level > 1) {
	if (a_cooltime < 1 and a_possible == true) {
		if(irandom(20) == 1) {
			server78_create_instace(nu_skill2, x, y);
		}
	}
}

if (global.hat == spr_hat23 and level > 1) {
	if(irandom(20 - level) == 1) {
		server78_create_instace(wing_skill3, x, y);
	}
}
if (global.hat == spr_hat38 and level > 1) {
	if (sturn > 0) {
		if(irandom(4) == 1) {
			server78_create_instace(fly_skill3, x, y);
			server78_create_instace(fly_skill3, x, y);
			server78_create_instace(fly_skill3, x, y);
			server78_create_instace(fly_skill3, x, y);
		}
	}
}
if (global.hat == spr_hat53 and level > 1) {
	if (sturn > 0) {
		if(irandom(8) == 1) {
			server78_create_instace(he_skill1, x, y);
		}
	}
}
if (string_length(global.name) == 0) {
	show_message("공백충");
	url_open("https://www.youtube.com/watch?v=Zq51xKG-hyU");
	game_end();
	exit
}
for (var i = 1; i < string_length(global.name) + 1; i++) {
	if !(ord(string_char_at(global.name, i)) < 127 and ord(string_char_at(global.name, i)) > 31) {
		if !(ord(string_char_at(global.name, i)) < 12644 and ord(string_char_at(global.name, i)) > 12592) {
			if !(ord(string_char_at(global.name, i)) < 55204 and ord(string_char_at(global.name, i)) > 44031) {
				show_message("ㅈ같은 문자 발견");
				url_open("https://heeeeeeeey.com/");
				game_end();
				exit
			}
		}
	}
}