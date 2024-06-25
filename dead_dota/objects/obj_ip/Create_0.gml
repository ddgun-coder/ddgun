/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
instance_deactivate_object(object_index);
msg = -1;
ip_num = 2;
file_path = working_directory + "ips.txt";
socket = 0;

function load_ip() {
	if (file_exists(file_path)) {
		var file = file_text_open_read(file_path);
		if (file == -1) {
			//show_debug_message("불가능.");
			return;
		}
		for (var i = 0; i < ip_num; i++) {
			global.ips[i] = file_text_read_string(file);
			file_text_readln(file);
		}
		file_text_close(file);
	}
}

if (image_index == 0) {
	global.ips = array_create(ip_num, "");
	global.ip_check = array_create(ip_num, noone);
	load_ip();
	//show_debug_message(global.ips);
}

function save_ip() {
	if (file_exists(file_path)) {
		var file = file_text_open_write(file_path);
		if (file == -1) {
			//show_debug_message("불가능.");
			return;
		}
		for (var i = 0; i < ip_num; i++) {
			file_text_write_string(file, global.ips[i]);
			file_text_writeln(file);
		}
		file_text_close(file);
	}
}

function connect_check(connect_index) {
	if (global.ips[connect_index] == "") return;
	//show_debug_message(global.ips[connect_index]);
	var connect = network_connect(socket, global.ips[connect_index], 50199);
	if (connect >= 0) {
		global.ip_check[connect_index] = true;
		network_destroy(socket);
		socket = network_create_socket(network_socket_tcp);
	}
	else {
		global.ip_check[connect_index] = false;	
	}
}
