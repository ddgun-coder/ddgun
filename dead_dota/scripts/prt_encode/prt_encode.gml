function prt_encode(argument0, argument1) 
{	
	global.prt_de_list[| argument0] = global.prt_key;
	return argument1-global.prt_key;
}