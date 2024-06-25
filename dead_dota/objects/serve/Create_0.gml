if (instance_number(object_index) >= 2) instance_destroy();
time = 0;
max_score = 40;
network_set_config(network_config_connect_timeout,15000);
network_set_config(network_config_use_non_blocking_socket,true);
connecting = false;
if (global.online == 0) {
	network_destroy(global.client);
	global.client = network_create_socket(network_socket_tcp);
	if (global.client < 0 ){
		show_message("어캐했노 ㅅㅂ련아")
		game_end();
	}
	network_set_timeout(global.client, 1000, 1000);
	temp_id = 0;
	depth = -2000;
	connect = network_connect_async(global.client , global.ip, 50199);
	connecting = true;
	if (connect < 0) {
		show_message("접속 불가능!");
	}
}	
else {
	connect = 1;
}
ping = 0;
num_client = 0;
win = 0;
bol_hat1 = 0;
bol_hat2 = 0;
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
	low_cli,
	last,
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
	hat_angle,
	face_YA,
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
	eiu,
	stats,
	d_attack_type,
	q_attack_type,
	w_attack_type,
	stats6_type,
	skill_con,
	up_skill,
	light,
	babo_change,
	armR_more_x,
	armR_more_y,
	arm_moreR_YA,
	arm_moreL_YA,
	armL_more_x,
	armL_more_y,
	protection_val
}//서버룸
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
arm = array_create(25, 0);
foot = array_create(25, 0);
hat = array_create(25, 0);
skin = array_create(25, 0);
face = array_create(25, 0);
pow = array_create(25, 0);
nu_time = 0;
buff_chat = buffer_create(48,buffer_fixed,1);
buff_ach = buffer_create(150,buffer_fixed,1);
buff_big = buffer_create(300, buffer_grow, 1);
buffer_write(buff_ach, buffer_u8, 242);
buffer_write(buff_ach, buffer_string, "hidden_key");
buff_ach_len = buffer_tell(buff_ach);
get_money = 0;
delay= 5;	
OK = 0;
OK2 = 0;


alarm[2] = 100