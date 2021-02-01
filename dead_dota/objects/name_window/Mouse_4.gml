var name = get_string("당신의 이름은?", "");
if (string_length(name) > 10 or string_length(name) == 0) {
	show_message("ㅛ");
	global.name = "심영";
}
else {
	global.name = name;
}
if (" " = string_char_at(name, 0)) {
	show_message("앞에다가 띄어쓰기 하지마");
	global.name = "김두한";
}
else {
	if (global.name != "심영") {
		global.name = name;
	}
}
for (var i = 1; i < string_length(global.name) + 1; i++) {
	if !(ord(string_char_at(global.name, i)) < 127 and ord(string_char_at(global.name, i)) > 31) {
		if !(ord(string_char_at(global.name, i)) < 12644 and ord(string_char_at(global.name, i)) > 12592) {
			if !(ord(string_char_at(global.name, i)) < 55204 and ord(string_char_at(global.name, i)) > 44031) {
				show_message("ㅈ같은 문자 발견");
				global.name = "샌즈";
			}
		}
	}
	if (ord(string_char_at(global.name, i)) == 124) {
		show_message("ㅈ같은 문자 발견");
		global.name = "샌즈";
	}
}