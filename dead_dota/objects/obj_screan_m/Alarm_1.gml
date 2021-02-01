/// @description Insert description here
// You can write your code in this editor
var temp = asset_get_index("testing" + string(testing.cur_attack));
testing.view_where = 3;
camera_set_view_target(view_camera[3], temp.id);
view_visible[3] = true;