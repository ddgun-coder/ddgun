function prt_add(argument0) 
{
	var index = ds_list_size(global.prt_list)
	ds_list_add(global.prt_list, prt_encode(index, argument0));
	ds_list_add(global.prt_de_list, global.prt_key);
}