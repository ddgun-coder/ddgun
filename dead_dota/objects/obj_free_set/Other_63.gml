/// @description Insert description here
// You can write your code in this editor
var i_d = ds_map_find_value(async_load, "id");
if i_d == msg
{
    if ds_map_find_value(async_load, "status")
    {
        if ds_map_find_value(async_load, "result") != ""
        {
			var val = ds_map_find_value(async_load, "result");
			if (directory_exists(working_directory + "items/")) {
				directory_create(working_directory + "items/");
			}
			var path = working_directory + "items/" + val + ".txt";
			if (type == TYPE.SAVE) {
				save_items(path);
			}
			else if (type == TYPE.LOAD) {
				load_items(path);	
			}
			type = noone;
        }
		else {
			type = noone;	
		}
    }
}


