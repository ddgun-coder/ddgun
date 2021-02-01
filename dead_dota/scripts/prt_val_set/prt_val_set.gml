function prt_val_set(argument0, argument1) 
{	
	ds_list_replace(global.prt_list,argument0,prt_encode(argument0,argument1));
}