/// @description Insert description here
// You can write your code in this editor
file_name = "";
file_path = file_name + ".txt";
msg = -1;
type = noone;

enum TYPE {
	LOAD, 
	SAVE
}

function load_items(path) {
	var name;
	var spr_ind;
	var index;
	var item_index = 0;
	var item;
	if (file_exists(path)) {
		var file = file_text_open_read(path);
		if (file == -1) {
			//show_debug_message("불가능.");
			exit;
		}
		while(!file_text_eof(file)) {
			name = file_text_read_string(file);
			file_text_readln(file);
			spr_ind = file_text_read_real(file);
			file_text_readln(file);

			index = shop_button1.found_index(asset_get_index(name), spr_ind);
			//show_debug_message(index);
			if (index != -1) {
				item = shop_button1.item[index];
				prt_val_add(0, -item.price);
				global.item[item_index] = index;
				global.item_time_max[item_index] = item.max_time;
				global.item_cnacle[item_index] = item.cancle;
				global.item_time[item_index] = 0;
			}
			item_index++;
		}
		file_text_close(file);
		found_same();
		audio_play_sound(buy_item, 1, false);
	}
	else {
		show_message("프리셋이 없습니다. 오른쪽 마우스로 저장하십쇼.");	
	}
}

function save_items(path) {
	var n = array_length(global.item);
	var file;
	//show_debug_message(filename_path(path));
	if (!file_exists(path)) {
		file = file_text_open_write(path);
		file_text_close(file);
	}
	file = file_text_open_write(path);
	var index
	var con;
	for (var i = 0; i < n; i++) {
		index = global.item[i];
		if (index == spr_none) {
			file_text_write_string(file, "spr_none");
			file_text_writeln(file);
			file_text_write_real(file, 0);
			file_text_writeln(file);
			continue;
		}
		file_text_write_string(file, sprite_get_name(shop_button1.item[index].sprite));
		file_text_writeln(file);
		file_text_write_real(file, shop_button1.item[index].sprite_ind);
		file_text_writeln(file);
	}
	file_text_close(file);
}

function found_same() {
	var ind = noone;
	for (var i = 0; i < MAX_ITME_BOX - 1; i++) {
		if (global.item[i] == spr_none) continue;
		for (var j = 1 + i; j < MAX_ITME_BOX; j++) {
			if (global.item[i] == global.item[j]) {
				prt_val_add(0 ,1000);
				global.item[j] = spr_none;
			}
		}
	}
}