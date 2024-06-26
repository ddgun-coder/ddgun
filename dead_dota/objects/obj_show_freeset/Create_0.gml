/// @description Insert description here
// You can write your code in this editor
free_set_array = [];
files = [];
show = false;
draw_x = x - 600;
dy = 50; //프리셋이 첫번째로 위치하는 y좌표 
function set_list() {
	show = !show;
	if (show == false) return;
	files = [];
	if (directory_exists(working_directory + "items/")) {
		directory_create(working_directory + "items/");//만약 items디렉터리가 없다면 새성합니다.
	}
	var file_name = file_find_first(working_directory + "/items/*.txt", fa_none); //해당 items 디렉터리 내부에서 *.txt로 된 파일 이름을 가져와 줍니다.
	while (file_name != "")
	{
	    array_push(files, file_name);
	    file_name = file_find_next();//만약 정상적인 파일이면 files배열에 하나씩 넣어줍니다.
	}
	file_find_close(); //파일 찾기를 종료합니다.
	
	var n = array_length(files);
	var name, spr_ind, index, array_index;
	for (var i = 0; i < n; i++) {
		free_set_array[i] = [];	
	}//해당 배열에 현재가져온 아이템프리셋 내용을 빈 배열로 초기화 해줍니다.
	for (var i = 0; i < n; i++) {
		var file = file_text_open_read(working_directory +"/items/" + files[i]); //위에서 찾은 파일을 하나씩 열어줍니다. 
		if (file == -1) continue;//만약 해당 파일이 열리지 않는다면 다음 파일로 스킵합니다.
		
		array_index = 0;
		while(!file_text_eof(file)) {
			name = file_text_read_string(file);
			file_text_readln(file);
			spr_ind = file_text_read_real(file);
			file_text_readln(file);
			//해당 .txt파일에서 [name], [spr_ind]를 쌍으로 저장해줍니다. 
			index = shop_button1.found_index(asset_get_index(name), spr_ind); //해당 아이템이 존재하는지 확인하여 해당 아이템의 index를 반환합니다.
			array_push(free_set_array[i], index);//해당 index를 free_set_array[i]에 넣어줍니다.
			array_index++;
		}
		file_text_close(file);//파일을 닫아줍니다. 
	}
}