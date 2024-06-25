/// @description Insert description here
// You can write your code in this editor
free_set_array = [];
files = [];
show = false;
draw_x = x - 600;
function set_list() {
	show = !show;
	if (show == false) return;
	files = [];
	if (directory_exists(working_directory + "items/")) {
		directory_create(working_directory + "items/");
	}
	var file_name = file_find_first(working_directory + "/items/*.txt", fa_none);
	while (file_name != "")
	{
	    array_push(files, file_name);
	    file_name = file_find_next();
	}
	file_find_close();
	
	var n = array_length(files);
	var name, spr_ind, index, array_index;
	for (var i = 0; i < n; i++) {
		free_set_array[i] = [];	
	}
	for (var i = 0; i < n; i++) {
		var file = file_text_open_read(working_directory +"/items/" + files[i]);
		if (file == -1) continue;
		
		array_index = 0;
		while(!file_text_eof(file)) {
			name = file_text_read_string(file);
			file_text_readln(file);
			spr_ind = file_text_read_real(file);
			file_text_readln(file);

			index = shop_button1.found_index(asset_get_index(name), spr_ind);
			array_push(free_set_array[i], index);
			array_index++;
		}
		file_text_close(file);
	}
}