max_score = 40;
version = 127;
network_set_config(network_config_connect_timeout,4000);
if (global.online == 0) {
	network_destroy(global.client);
	global.client = network_create_socket(network_socket_tcp);
	if (global.client < 0 ){
		show_message("어캐했노 ㅅㅂ련아")
		game_end()
	}
	network_set_timeout(global.client, 1000, 1000);
	temp_id = 0;
	depth = -2000;
	ime_set_composition_window(0);
	connect = network_connect_async(global.client , global.ip , 50199);
	
	if (connect < 0) {
		show_message("서버가 없다:" + string(version) + "버전")
		global.online = 0;
	}
	else
	{
		global.online = 1;
	}
}
else {
	connect = 1;
}
ping = 0;
num_client = 0;
win = 0;
bol_hat1 = spr_hat1;
bol_hat2 = spr_hat1;
last_time = 0;
left_n = 0;
right_n = 0;
enum ROOM {
	rock_britge,
	ant,
	forest,
	kazino,
	study,
	racing,
	mu,
	sward,
	under,
	hos,
	bol,
	hell,
	arena,
	drangon,
	sea,
	soccer,
	sky,
	r1004,
	ball,
	ufo,
	rock_cave,
	dragon_sward,
	test,
	last
}
enum serve_val{
	terror_charge,
	cancle_able,
	face_variable,
	only_hat,
	hat_bye,
	color,
	left_arm_xscale,
	hat_xscale,
	hat_yscale,
	right_arm_xscale,
	live,
	buff_index,
	a_charging,
	charging,
	spr_arm_morey,
	spr_arm_morex,
	spr_arml_more,
	spr_armr_more,
	effect_index,
	effect_num,
	hat_YA,
	right_arm_yscale,
	left_arm_yscale,
	spr_arm_more_num,
	effect_index_num,
	hat_frame,
	sturn,
	team,
	alive,
	face,
	alpha,
	eiu
}
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
cid_time = array_create(25,0);
cid_prex = array_create(25,0);
cid_prey = array_create(25,0);
YA = array_create(25,0)
xx = array_create(25,0)
yy = array_create(25,100);
hat_frame = array_create(25,0)
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
skin = array_create(25, 0);
face = array_create(25, spr_face1);
pow = array_create(25, 0);
nu_time = 0;
buff_chat = buffer_create(48,buffer_fixed,1);
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

alarm[0] = 40 * delay + 1;
alarm[1] = 40 * delay;