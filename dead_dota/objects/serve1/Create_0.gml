network_destroy(global.client);
global.online = 0;
server = network_create_server(network_socket_tcp,55350, 1);
if (global.online == 0) {
	network_set_config(network_config_connect_timeout,800);
	global.client = network_create_socket(network_socket_tcp);
	if (global.client < 0 ){
		show_message("어캐했노 ㅅㅂ련아")
		game_end()
	}
	depth = -2000;
	ime_set_composition_window(0);
	connect = network_connect(global.client , "127.0.0.1" , 55350);
	if (connect < 0) {
		show_message("오류!")
		global.online = 2;
	}
	else {
		global.intuto = true;
		global.my_cid = 0;
		global.my_cid_id = testing0;	
	}
}
else {
	connect = 1;
} 
win = 0;
last_time = 0;
buff_size = 0;
kazino_what = 0;
kazino_amount = 0;
kazino_where1 = 0;
kazino_where2 = 0;
kazino_get = false;
kazino_time = 0;
cur_room = -1;
buff = 0
tp = 0
buffer_type = 0
online = 200;
cid = 0
chat = 0
a_name = 0
you_cid = 0;
teama = 0;
depth = -1000;
YA = array_create(25,0);
cid_time = array_create(25,0);
cid_prex = array_create(25,0);
cid_prey = array_create(25,0);
xx = array_create(25,0)
yy = array_create(25,100);
hat_frame = array_create(25,0)
serve_hp = array_create(25,100);
team = array_create(25,0);
serve_name = array_create(25,"");
nu_name_left = array_create(25,"NO");
nu_name_right = array_create(25,"YES");
team_score = array_create(2,0);
ary_cid = array_create(25,0);
green_text = array_create(4,"");
arm = array_create(25, spr_arm1);
foot = array_create(25, spr_foot1);
hat = array_create(25, spr_hat1);
face = array_create(25, spr_face1);
nu_time = 0;
get_money = 0;
delay= 5;
OK = 0;
OK2 = 0;
date = date_current_datetime();

ftime1 =date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date)+delay);

ftime2 =date_create_datetime(
date_get_year(date),date_get_month(date),
date_get_day(date),date_get_hour(date),
date_get_minute(date),date_get_second(date)+delay);

alarm[0] = room_speed * delay + 1;
alarm[1] = room_speed * delay;