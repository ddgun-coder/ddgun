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
		var file = file_text_open_read(path); //txt 파일 열음.
		if (file == -1) {
			exit;//파일이 존재하지 않으면 exit;
		}
		while(!file_text_eof(file)) { //파일의 마지막이 될때까지 데이터를 가져옵니다. 
			name = file_text_read_string(file);
			file_text_readln(file);
			spr_ind = file_text_read_real(file);
			file_text_readln(file);
			//데이터들은 [해당 아이템의 스프라이트], [스프라이트의 프레임 번호]로 한쌍입니다.
			index = shop_button1.found_index(asset_get_index(name), spr_ind); //해당 아이템이 현재 게임버전에 존재하는지 확인합니다.
			if (index != -1) { //만약 해당 아이템이 존재한다면
				item = shop_button1.item[index];
				prt_val_add(0, -item.price);
				global.item[item_index] = index;
				global.item_time_max[item_index] = item.max_time;
				global.item_cnacle[item_index] = item.cancle;
				global.item_time[item_index] = 0;
			}//해당 아이템으로 설정합니다.
			item_index++;//다음 아이템을 확인
		}
		file_text_close(file);//txt 파일 닫음.
		found_same(); //같은 아이템이 현재 게임버전에 존재하는지 확인.
		audio_play_sound(buy_item, 1, false);//구매소리
	}
	else {
		show_message("프리셋이 없습니다. 오른쪽 마우스로 저장하십쇼.");	
	}
}

function save_items(path) {
	var n = array_length(global.item);
	var file;
	//show_debug_message(filename_path(path));
	if (!file_exists(path)) { //해당 파일이 존재하는지 확인.
		file = file_text_open_write(path); 
		file_text_close(file);//해당 과정을 거치면 자동으로 txt파일이 생성됩니다.
	}
	file = file_text_open_write(path);//txt 파일을 열어줍니다.
	var index
	var con;
	for (var i = 0; i < n; i++) {
		index = global.item[i]; // 현재의 아이템을 가져옵니다.
		if (index == spr_none) {
			file_text_write_string(file, "spr_none");
			file_text_writeln(file);
			file_text_write_real(file, 0);
			file_text_writeln(file);
			continue;
			//만약 현재 아이템이 비어있다면 [spr_none], [0]이 들어가도록 만드렁 줍니다.
		}
		file_text_write_string(file, sprite_get_name(shop_button1.item[index].sprite));
		file_text_writeln(file);
		file_text_write_real(file, shop_button1.item[index].sprite_ind);
		file_text_writeln(file);
		//만약 현재 아이템이 있다면 [스프라이트의 이름], [해당 스프라이트의 프레임]으로 저장합니다.
	}
	file_text_close(file);//txt파일 닫음.
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