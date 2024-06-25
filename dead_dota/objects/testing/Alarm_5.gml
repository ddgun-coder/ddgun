alarm[5] = 360;
server77_equal(serve_val.d_attack_type, d_attack_type, buffer_u16);
server77_equal(serve_val.stats, global.stats, buffer_u16);

if (global.hat == spr_hat37 and level == 3) {
	var big_val  = (irandom(10) + 1) * 0.2;
	main_big_val = big_val;
	go_to_scale = big_val;
}

if (file_exists("deadsave1.sav"))
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
}