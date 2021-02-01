function prt_val_add(argument0, argument1) 
{
	var add_val;
	add_val=prt_decode(argument0,global.prt_list[|argument0]);
	ds_list_replace(global.prt_list,argument0,prt_encode(argument0,add_val+argument1));
}