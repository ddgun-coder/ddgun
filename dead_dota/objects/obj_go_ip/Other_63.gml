/// @description Insert description here
// You can write your code in this editor
var i_d = ds_map_find_value(async_load, "id");
if i_d == msg
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				global.ip = ds_map_find_value(async_load, "result");
				if (global.ip == "") {
					global.ip = "211.250.240.183";
				}
            }
        }
    }