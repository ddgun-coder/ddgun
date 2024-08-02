windows = 0;
image_index = 0;
image_speed = 0;
depth = -1200;
layer_array = [layer_get_id("instance_setting_layer0"), layer_get_id("instance_setting_layer1"), layer_get_id("instance_setting_layer2")];
size = array_length(layer_array);
ins_id = array_create(size, 0);

function deactivate_layer_all() {
	var n = 0;
	for (var i = 0; i < size; i++) {
		n = array_length(ins_id[i]);
		for (var j = 0; j < n; j++) {
			instance_deactivate_object(ins_id[i][j]);
		}
	}
}

function layer_get_ins_id() {
	var n = 0;
	var _array = [];
	for (var i = 0; i < size; i++) {
		_array = layer_get_all_elements(layer_array[i]);
		n = array_length(_array);
		ins_id[i] = [];
		for (var j = 0; j < n; j++) {
			array_push(ins_id[i], layer_instance_get_instance(_array[j]));
		}
	}
}
layer_get_ins_id();
function set_layer_activate(ind) {
	global.sub_setting = ind;
	var n = 0;
	for (var i = 0; i < size; i++) {
		n = array_length(ins_id[i]);
		if (i == global.sub_setting) {
			for (var j = 0; j < n; j++) {
				if (ins_id[i][j].object_index != obj_window_resolution) {
					instance_activate_object(ins_id[i][j]);
				}
			}
		}
		else {
			for (var j = 0; j < n; j++) {
				instance_deactivate_object(ins_id[i][j]);
			}
		}
	}
}
set_layer_activate(0);