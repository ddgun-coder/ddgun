if (file_exists("deadsave1.sav"))
{
	if (show_question("이미 같은이름의 세이브가 존재합니다. 그래도 저장하겠습니까?"))
	{
	var map = ds_map_create();

	map[? "starcoin"] = global.starcoin;
	map[? "pickaxe_index"] = global.pickaxe_index;
	
	for(i = 0; i <10; ++i)
	{
		map[? "pickaxe_exist" + string(i)] = global.pickaxe_exist[i]
		map[? "pickaxe_num" + string(i)] = global.pickaxe_num[i]
	}

	ds_map_secure_save(map, "deadsave1.sav");
	ds_map_destroy(map);
	show_message("저장성공")
	}
}
else
{
	var map = ds_map_create();

	map[? "starcoin"] = global.starcoin;
	map[? "pickaxe_index"] = global.pickaxe_index;
	
	for(i = 0; i <10; ++i)
	{
		map[? "pickaxe_exist" + string(i)] = global.pickaxe_exist[i]
		map[? "pickaxe_num" + string(i)] = global.pickaxe_num[i]
	}

	ds_map_secure_save(map, "deadsave1.sav");
	ds_map_destroy(map);
	show_message("저장파일 생성 성공")
}