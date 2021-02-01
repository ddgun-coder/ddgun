if (file_exists("deadsave1.sav"))
{
	var map = ds_map_secure_load("deadsave1.sav")
	global.starcoin = map[? "starcoin"];
	global.pickaxe_index = map[? "pickaxe_index"];
	if (global.pickaxe_index < spr_pickaxe1 or global.pickaxe_index > spr_pickaxe9) {
		global.pickaxe_index = spr_pickaxe1;
	}
	
	for(i = 0; i <10; ++i)
	{
		global.pickaxe_exist[i] = map[? "pickaxe_exist" + string(i)]
		global.pickaxe_num[i] = map[? "pickaxe_num" + string(i)]
	}
	
	ds_map_destroy(map)
}