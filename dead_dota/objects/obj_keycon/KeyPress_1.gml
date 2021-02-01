/// @description Insert description here
// You can write your code in this editor
if (main) {
	switch(pease) {
		case 0:
			if (keyboard_key == 27) {
				global.left = vk_left;
				global.right = vk_right;
				global.up = vk_up;
				global.down = vk_down;
				global.shift = vk_shift;
				global.cap = 20;
				global.keya = ord("A");
				global.keyf = ord("F");
				global.keys = ord("S");
				global.keyd = ord("D");
				global.keyq = ord("Q");
				global.keyw = ord("W");
				global.keye = ord("E");
				global.keyr = ord("R");
				pease = -1;
				main = false
				obj_expl.what = "설정이 저장됐습니다.";
			}
			else {
				global.keya = keyboard_key
			}
		break;
		case 1:
			global.keys = keyboard_key
		break;
		case 2:
			global.keyd = keyboard_key
		break;
		case 3:
			global.keyq = keyboard_key
		break;
		case 4:
			global.keyw = keyboard_key
		break;
		case 5:
			global.keye = keyboard_key
		break;
		case 6:
			global.keyr = keyboard_key
		break;
		case 7:
			global.cap = keyboard_key
		break;
		case 8:
			global.shift = keyboard_key
		break;
		case 9:
			global.keyf = keyboard_key
		break;
		case 10:
			global.up = keyboard_key
		break;
		case 11:
			global.down = keyboard_key
		break;
		case 12:
			global.left = keyboard_key
		break;
		case 13:
			global.right = keyboard_key
			pease = -1;
			main = false
			obj_expl.what = "설정이 저장됐습니다.";
		break;
		var file = file_text_open_write("key_config.txt");
		file_text_write_real(file, global.keya);
		file_text_writeln(file);
		file_text_write_real(file, global.keys);
		file_text_writeln(file);
		file_text_write_real(file, global.keyd);
		file_text_writeln(file);
		file_text_write_real(file, global.keyq);
		file_text_writeln(file);
		file_text_write_real(file, global.keyw);
		file_text_writeln(file);
		file_text_write_real(file, global.keye);
		file_text_writeln(file);
		file_text_write_real(file, global.keyr);
		file_text_writeln(file);
		file_text_write_real(file, global.shift);
		file_text_writeln(file);
		file_text_write_real(file, global.cap);
		file_text_writeln(file);
		file_text_write_real(file, global.keyf);
		file_text_writeln(file);
		file_text_write_real(file, global.up);
		file_text_writeln(file);
		file_text_write_real(file, global.down);
		file_text_writeln(file);
		file_text_write_real(file, global.left);
		file_text_writeln(file);
		file_text_write_real(file, global.right);
		file_text_close(file);
	}
	pease++;
}