if (instance_number(object_index) >= 2) instance_destroy();
time = 0;
max_score = 40;
network_set_config(network_config_connect_timeout,15000);
network_set_config(network_config_use_non_blocking_socket,true);
connecting = false;
caes111_level = 0;
white_array_loading = [111, 112, 114, 115];
white_array_loading_num = array_length(white_array_loading);
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
game_end_lose = false;
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
case111_type = 0;
get_another_skill = false;
full_loaded = false;

function send_case111_type(_type) {
	case111_type = _type;
	buffer_seek(buff_chat, buffer_seek_start, 0);
					
	buffer_write(buff_chat,buffer_u8,111)//111 is only start 
	buffer_write(buff_chat,buffer_u8,case111_type)//111 is only start 
				
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}

function case111_func() {
	cid = buffer_read(buff,buffer_u8);
	var type = buffer_read(buff,buffer_u8);
    if (cid < 0) {
        exit    
    }
    if (cid > 25) {
        exit	
    }
	show_debug_message(type);
	switch(type) {
		case 0:
			var level5_ration = buffer_read(buff,buffer_u8);
			prt_val_set(Val.level5_ration, level5_ration);
		    cur_room = buffer_read(buff, buffer_string);
		    team_score[0] = buffer_read(buff,buffer_u8);
		    team_score[1] = buffer_read(buff,buffer_u8);
		    var temp_time =  buffer_read(buff,buffer_u16);
		    win =  buffer_read(buff,buffer_bool);
		    if (cid == global.my_cid) {
		        global.team = buffer_read(buff,buffer_bool);
		    }
		    else {
		        var D = buffer_read(buff,buffer_bool);
		    }
			last_time = temp_time;
		    if (win != global.team and last_time > 0) {
				game_end_lose = true;
		    }
			if (cid == global.my_cid) {
				send_case111_type(1);
			}
		break;
		
		case 1:
		    for (var i = 1 ; i < 25 ; i++) {
		        ary_cid[i] = buffer_read(buff,buffer_bool);
		        if (ary_cid[i] == 1) {
		            hat_frame[i] = buffer_read(buff,buffer_u8);
		            serve_name[i] = buffer_read(buff,buffer_string);
		            team[i] = buffer_read(buff,buffer_u8);
		            hat[i] = buffer_read(buff,buffer_u8);
		            arm[i] = buffer_read(buff,buffer_u8);
		            foot[i] = buffer_read(buff,buffer_u8);
		            face[i] = buffer_read(buff,buffer_u16);
		            pow[i] = buffer_read(buff,buffer_u8);
		            skin[i] = buffer_read(buff,buffer_u8);
		        }
		    }
		    max_score = buffer_read(buff,buffer_u8);
		    var temp_mpr = buffer_read(buff,buffer_s8);
		    var t_dmg_per = buffer_read(buff,buffer_s8);
		    prt_val_set(Val.MPR, temp_mpr);
		    prt_val_set(Val.dmg_per, t_dmg_per / 100 + 1);
			if (cid == global.my_cid) {
				send_case111_type(2);
			}
		break;
		
		case 2:
		    for(var i = 1; i < 100; i++) {
		        global.ban_list[i] = buffer_read(buff,buffer_bool);
		        if (global.hat_show == i) {
		            if (global.ban_list[i]) {
		                scr_hat_change2(spr_hat);
		                buffer_seek(buff_chat, buffer_seek_start, 0);
   
		                buffer_write(buff_chat,buffer_u8,95);//95는 고자동기화
		                buffer_write(buff_chat,buffer_u8, global.hat_show);
		                buffer_write(buff_chat,buffer_u8, testing.level);
   
		                network_send_packet(0,buff_chat, 3);
		            }
		        }
		    }	
			var num = array_length(shop_button1.item);
			for (var i = 0; i < num; i++) {
				shop_button1.item[i].ban = false;
			}
			
			for (var i = 0; i < 5; i++) {
				var item = buffer_read(buff, buffer_u8);
				var item_ind = buffer_read(buff, buffer_u8);
				if (item == 0) continue;
				var index = shop_button1.found_index(asset_get_index("spr_hat" + string(item)) , item_ind);
				if (index != -1) {
					shop_button1.item[index].ban = true;
					for (var j = 0; j < MAX_ITME_BOX; j++) {
						if (global.item[j] == index) {
							prt_val_add(0 ,1000);
							global.item[j] = spr_none;
						}
					}
				}
			}
			
			for (var i = 0; i < 5; i++) {
				var item = buffer_read(buff, buffer_u8);
				var item_ind = buffer_read(buff, buffer_u8);
				var item_time = buffer_read(buff, buffer_u16);
				if (item == 0) continue;
				var index = shop_button1.server_array[i];
				if (index != -1) {
					shop_button1.item[index].sprite = asset_get_index("spr_hat" + string(item));
					shop_button1.item[index].sprite_ind = item_ind;
					shop_button1.item[index].max_time = item_time;
				}
			}
			for (var i = 1 ; i < 25 ; i++) {
		        var obji = global.cid_array[i];
		        obji.hat_frame = hat_frame[i];
		        obji.x = xx[i];
		        obji.y = yy[i];
		        obji.name = serve_name[i];
		        obji.team = team[i];
			   
				if (0 <= hat[i] and hat[i] < array_length(global.hat_array) - 1) {
					obji.hat = global.hat_array[hat[i]];
				}
				else {
					obji.hat = spr_face1;
				}
			   
				if (0 <= foot[i] and foot[i] < array_length(global.foot_array) - 1) {
						obji.foot = global.foot_array[foot[i]];
				}
				else {
						obji.foot = spr_foot1;
				}
				
				if (0 <= arm[i] and arm[i] < array_length(global.arm_array) - 1) {
						obji.arm = global.arm_array[arm[i]];
				}
				else {
						obji.arm = spr_foot1;
				}
		        obji.face = face[i];
		        obji.skin = skin[i];
		    }
			
		    var obj = global.cid_array[cid];
		    obj.YA = 0;
		    obj.live = 1;
		    green_text_update(string(serve_name[cid]) + "님이 세상에서 태어났습니다.");
			shop_button1.item_surf();
			
			if (cid == global.my_cid) {
				send_case111_type(3);
			}			
			
		    if (room != room_out) {
		        room_pass(cur_room);
		    }
		break;
	}		
}

alarm[2] = 100