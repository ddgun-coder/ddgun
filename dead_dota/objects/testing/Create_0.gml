card_name = "noone";
endemic_time = 0;
buff_goto_speed = 0;
function ouch_check_after() {
	if (arm_type != "ouch") return;
	if (no_change == false) {
		a_cooltime = 0;
		cancle_able = false;
		spin_able = false;
		a_possible = true;
		YA2 = YA;
	}
    seq_end();
	first_item_play = false;
	keyboard_checkE = false;
	keyboard_checkQ = false;
	keyboard_checkD = false;
	keyboard_checkW = false;
	is_babo_angle_show = false;
	target_start(false);
	spin_steadly_start(false);
	left_arm_get_bigger = false;
	face_variable = 0;
	server77_equal(serve_val.face_variable, 0, buffer_u8);
	if(global.stats = spr_stats2) {	
		b_cooltime = 200
	}	
	only_hat = false;
	ski_ready = false
	hat_bye = false;
	server77_equal(serve_val.only_hat, only_hat, buffer_bool);
	server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
	all_spin = 0;
	go_to_speed = 0;
	go_to_speed_solid = 0;
	jumping = false;
	a_charging = 0;
	arm_all_normal();
	left_arm_YA = 0 + 270;
	right_arm_YA = 0 + 90;
	charge = false;
	arm_movement(5, -5, 5, 5);
	if (big_shild = false) {
		if (instance_exists(serve)) {
			if (serve.kazino_time < 0) {
				go_to_scale = main_big_val * stats_big_val;		
			}
		}
	}
	if (sturn <= 0) {
		if (nu_on == true) {
			nu_on = false;
			if (go_to_scale < 1) {
				go_to_scale = main_big_val * stats_big_val;
			}
			big_val = 1;
			if (normal_attack_type == spr_bigsaw) {
				aring_amount--;
				if (aring_amount < 1) {
					normal_attack_type = spr_none;
				}
			}
			else {
				normal_attack_type = spr_none;
			}
			face_variable = 0;
			if (no_change == false) {
				terror_charge = 0;
				server77_equal(serve_val.terror_charge, 0, buffer_u8);
			}
			server77_equal(serve_val.face_variable, 0, buffer_u8);
			server202_sound(nu_3_sound_cancle);

			buffer_seek(buff_fast, buffer_seek_start, 0);
	
			buffer_write(buff_fast,buffer_u8,50);//50은 핵폭발관리;
			buffer_write(buff_fast,buffer_u8,2);
	
			network_send_packet(0,buff_fast,buffer_tell(buff_fast));
		}
		shild = false;
		arm_type = "normal"
		if (global.hat = spr_hat75) {
			combo_time = 0
		}
		EQ = false;
		ride = false;
		spin_scale = 1
		counter_attak = false
		extra_speed = 0
		if (normal_attack_type == spr_bigsaw) {
				aring_amount -= 1;
				if (aring_amount < 1) {
					normal_attack_type = spr_none;
				}
			}
			else {
				normal_attack_type = spr_none;
			}
		high_speed = 1
		horse = false
		face_YA = 0
		hat_angle = 0
		hide_bam = false
		YA_changeable = false;
		view_visible[0] = true;
		view_visible[2] = false;
		view_visible[3] = false;
		view_where = 0;
		obj_telescope_view.tele = false;
		hat_move = false;
		big_shild = false;
		server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
		if (buff_index != buff_giligili2 and a_cooltime < 1 and a_possible == true) {
			go_soild = false;
		}
	}
}

function ouch_check() {
	if (arm_type == "ouch")
	{
		if (timeline_position >= 0) {
			timeline_running = 0;
		}
	}//공격을 받았다!, 피격 상호작용
}
function flash() {
	hp -= 5;
	flash_time = 200;
	arm_type = "attack";
	server78_create_instace(obj_flash, x, y);
	for(var i = 50; i > 0; i--) {
		if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
		{
			x += lengthdir_x(5 * i, YA - 90);
			y += lengthdir_y(5 * i, YA - 90);
			break;
		}//앞으로 자동이동
	}
	server78_create_instace(obj_flash_2, x, y);
	effect_card();	
}
function try_level_up(_level) {
	var val = prt_val_get(Val.level5_ration);
	if (irandom(999) < val) {
		level = 4;
		random_level5();
	}		
	else {
		level = _level;	
	}		
	hp = m_hp;
	buffer_seek(buff_fast, buffer_seek_start, 0);
	
	buffer_write(buff_fast,buffer_u8, 200)//200은 레벨업!소리와 표시
	buffer_write(buff_fast,buffer_u8, 0);
	
	network_send_packet(global.intuto,buff_fast,buffer_tell(buff_fast));
	
	buffer_seek(buff_fast, buffer_seek_start, 0);
	
	buffer_write(buff_fast,buffer_u8,201)//201은 실질적인 값증가.
	buffer_write(buff_fast,buffer_u8,level);
	
	network_send_packet(0,buff_fast,buffer_tell(buff_fast));
}
function buff_set() {
	buff_goto_speed = 0;
	if (sturn >= 79) {							  
		YA_changeable = true;
	}
	else {
		YA_changeable = false;
	}
	if (buff_index == buff_giligili) {
		buff_goto_speed = 6;
		YA_changeable = true;
	}

	if (buff_index == buff_timea) {
		a_cooltime = 4
		a_cycle = 4
	}
	if (buff_index == buff_giligili2) {
		buff_goto_speed = 20;
		YA_changeable = true;
		go_soild = true;
	}

	if (buff_index == spr_gas) {
		if (hp > 1) {
			hp -= 0.12;
		}
	}
	if (buff_index == buff_bleed) {
		if (hp > 0) {
			hp -= 0.09;
		}
	}
	if (buff_index == buff_apple3) {
		if (hp > 22) {
			hp -= 2;
		}
	}	
	if (arm_type == "ouch") buff_goto_speed = 0;
}
function big_skill1() {
	go_to_scale = 2;
	big_val_time = 400;	
	a_cooltime = 15;
}
function big_skill2() {
	go_to_scale = 3;
	big_val_time = 400;	
	a_cooltime = 15;
}
function big_skill3() {
	go_to_scale = 4;
	big_val_time = 400;	
	a_cooltime = 15;
}
function big_skill4() {
	go_to_scale = 6;
	big_val_time = 400;	
	a_cooltime = 15;
}

function main_big_val_step() {
	var changed = false;
	if (global.hat == spr_hat21) {
		switch(level) {
			case 0:
				main_big_val = 1.4;
				go_to_scale = 1.4;
				changed = true;
			break;
			case 1:
				main_big_val = 1.6;
				go_to_scale = 1.6;
				changed = true;
			break;
			case 2:
				main_big_val = 1.8;
				go_to_scale = 1.8;
				changed = true;
			break;
			case 3:
				main_big_val = 2;
				go_to_scale = 2;
				changed = true;
			break;
		}
	}
	if (global.hat == spr_level5_hat13) {
		switch(level) {
		    case 4:
			    main_big_val = 1.2;
				go_to_scale = 1.2;
				changed = true;
		    break;
		}
	}
	else {
		if (global.hat == spr_level5_hat2) {
			main_big_val = 3;
			go_to_scale = 3;
			changed = true;
		}
	}		
	
	if (card_name == "초미니") {
		go_to_scale = 0.2;
		main_big_val = 0.2;
		image_xscale = big_val;
		image_xscale = big_val;
		changed = true;
		return;
	}
		
	if (changed == false) {
		main_big_val = 1;
	}	

	if (big_val >= 1) {
	   image_xscale = big_val;
	   image_yscale = big_val;
	}
	else {
	   image_xscale = 1;   
	   image_yscale = 1;
	}
}

YA = 0
solid_pre = 0
hide_bam = false // 모습 감추기
ski_ready = false// 스키
high_speed = 1// 이속 배
depth = -20;
push = 0;
is_ground = false
grv_time = 0
armor = 0;
move_x = 0;
move_y = 0;
babo_change = false;				 
first_item_play = false;
spin_scale = 1						 
m_hp = 100 * 3;
face_x = 0;									 
protection = false;
protection_val = 0;
protection_val1 = 0;
protection_val_max = 0;
flash_time = 0;
protect_break = false;
protect_break_time = 0;
surf = -1;
face_y = 0;
skill_index = -1// 슬라임 W
item_index = -1 // 시계 Q
counter_attak = false;
babo_gage = 50;
hp = 100 * 3;
YA2 = 0;
m_mana = 200;
heal_stack = 0// 피격 스택
heal_stack_time = 0// 피격 스택 유지 시간
m_sturn = 0;
arm_moveR = false;
arm_move_speed = 0;
horse = false
face_delta = 0;
arm_move_delta = 0;
arm_move_limit = 0;
fish_time = 0;
fishing = 0; 
undying = false // 불사
item_time = 0//아이템 버그방
sturn_alpha = false;
lighting = false;
light_time = 0;
draw_lighting = false;
draw_lighting1 = false;
keyboard_checkD = false;
keyboard_checkW = false;
left_arm_get_bigger = false;
left_arm_get_bigger_delta = 0;
if (hide_bam = true) {// 모습
    depth = 7000
}
ink = 500;
effect_index_under = spr_none;

for (var i = 0; i < 8; i++) {
    global.item_time[i] = global.item_time[i] * 0.65;
}

mana = 100;
mouse_posible = false;
/*level_up_false = 0;*/
m_stemina = 100;
clock_ui = 54 // 시계 Q UI
aring_amount = 0;//아링 도끼 카운트
jump_time = 0;
stemina = 100;
sans_type = -1
babo_time = 6;

up_skill = 0;
m_aexp = 600;
grv = 0;
aexp = 0;
dominate_time = 0;
main_speed = 7;
a_cooltime = -1;
x_cooltime = 0
cur_attack = 0;
a_cycle = 10;
f_cycle = 10;

arm_tabcooltime = -1;
spin_steadly = false;
spin_val = 0;
spin_val_delta = 0;
gi = 0;
m_gi = 600;
how_long = 0;
level = 0;
combo = 0;
combo_time = 0;
a_possible = true;

face_variable = 0;

frame_level_up = 0;
live = 1;
sturn = 0;
/*
if (file_exists("dsaf.ppap")) {
	show_message("당신은 밴을 당했습니다 ㅠㅠ");
	url_open("https://www.youtube.com/watch?v=YZ7sQLqiNyk");
	game_end();
	exit;
}*/
hat_bye_time = -1;
chat = "";
chat_point = 0;
say_time = 0;
chat2 = "";
chat3 = "";
chat4 = "";
chat5 = "";
chat1 = "";
chat6 = "";
jump = false;
jump_time = 0;
randomize();
draw_set_font(font1)
draw_set_font(font0);//폰트 지정
alarm_set(11,15);
alarm[1] = 20;
only_move = 1;
depth = 100;
state = 0;
only_move_frame = 1;
buff_place = 0
chat_one = ""
room_speed = global.speeed;
cid = 0;
just_time = 1200;
alarm_set(9,1);
play_skill = 0;
other_cid = id;
extra_speed = 0;
stats_speed = 0;
hat_frame = 0;
face_frame = 0;
ride = false;
hat_bye = false;
all_spin = 0;
all_spin_limit = 0;
temp_YA = YA;
racing = 0;

open_key1 = false;
skill_posible = true;
EQ = false;
hat_move = false;
YA_change_10 = -4
buff_change_time = 0;
buff_speed = 0;
YA_changeable = false
hat_xscale = 1
skill_say = "";
go_to_speed_solid = 0;
skill_say_time = 0;
effect_index_num = -1;
jumping = false;
temp_x = x;
creper_die = false;
temp_y = y;
copper = 0;
iron = 0;
gold = 0;
dota_ball = 0;
pickaxe_up = 0;
mine_say_time = 0;
mine_say = "";
trying = 0;
fun_try = 0;
tele_try = 3;
pickaxe_charge = 900;
shild = false;
re = 0;
creper = false;
view_where = 0;
cur_xview = 0;
cur_yview = 0;
alive = 1;
buff_fast = buffer_create(10,buffer_fast,1);
no_change = false;
gap = 0;
charge = false;
charge_time = -1;
arm_type = "normal"
arm_type_num = 0;
left_arm_YA = 0;
right_arm_YA = 0;
left_arm_xscale = 1;
right_arm_xscale = -1;
left_arm_yscale = 1;
right_arm_yscale = 1;
left_arm_deltax = 0;
left_arm_deltay = 0;
right_arm_deltax = 0;
right_arm_deltay = 0;
left_goto_YA = 0;
right_goto_YA = 0;
hat_angle = 0
face_YA = 0 //얼굴 각도
arm_spin_speed = 1;
arm_spin_able = 0;
hat_x = x + lengthdir_x(charge * 15, YA - 90);
hat_y = y + lengthdir_y(charge * 15, YA - 90);
go_soild = false;
jump_try = 0;
star_frame = 0;
star_frame_s = 0;
alarm[5] = 400;
alarm[6] = 4000;
foot_type = "normal"
foot_type_num = 0;
left_foot_YA = 0;
right_foot_YA = 0;
left_foot_xscale = 1;
right_foot_xscale = -1;
left_foot_yscale = 1;
right_foot_yscale = 1;
left_foot_deltax = 0;
left_foot_deltay = 0;
right_foot_deltax = 0;
right_foot_deltay = 0;
left_goto_YA = 0;
right_goto_YA = 0;
go_to_solid_YA = 0;
arm_type_more = "none"
spr_arml_more = spr_none;
spr_armr_more = spr_none;
spr_arm_more_num = 0;
spr_arm_morex = 3;
spr_arm_morey = 20;
big_val = 1;
effect_index = spr_none;
effect_num = 0;
go_to_speed = 0;
go_to_speed2 = 0;
hat_YA = 0;
hat_num = 0;
mine_sat_time = 0;
mine_say = "";
go_to_scale = 1;
big_val_time = 0;
big_shild = false;
YA_change_small = false;
YA_change_small_time = 0;
buff_index = spr_none;
buff_time = 0;
only_hat = false;
dead_nu = false;
nu_say = 0;
nu_say_time = 0;
nu_on = false;
cancle_able = false;
alpha = 1;
cli_alpha = 1;
sward = false
invisible = false;
invisible_time = 0;
attacking = false;
bloodable = false;
immune = false;
terror_charge = 0;
shild_time = 0;
obj_id = 0;
spin_able = false;
moveable = true;
footL_x = x;
footL_y = y;
armL_x = x;
armL_y = y;
kazino_one = false;
armR_x = x;
armR_y = y;
footR_x = x;
footR_y = y;
main_big_val = 1;
stats_big_val = 1
normal_attack_type = spr_none;
d_attack_type = spr_sangbrush
q_attack_type = spr_sangbrush
w_attack_type = spr_sangbrush
stats6_type = 0
a_level = 0;
alarm_set(10,1);
counter = 0;
buff_chat = buffer_create(200 ,buffer_fixed,1);
buff_area = buffer_create(200 ,buffer_fixed,1);
a_a_cooltime = 0;
b_cooltime = -1;
gi_1 = 0;
mana_1 = 0;
a_charging_1 = 0;
charging_1 = 0;
spr_arm_morey_1 = 0;
spr_arm_morex_1 = 0;
spr_armr_more_1 = 0;
spr_arml_more_1 = 0;
effect_index_1 = 0;
effect_num_1 = 0;
effect_index_num_1 = 0;
hat_YA_1 = 0;
hat_angle_1 = 0
face_YA_1 = 0
right_arm_yscale_1 = 0;
left_arm_yscale_1 = 0;
spr_arm_more_num_1 = 0;
enum Val
{
    gi=1,
    mp=2,
	cuper = 3,
	iron = 4,
	gold = 5,
	ball = 6,
	event = 7,
	dmg_per = 8,
	MPR = 9,
	level5_ration = 10,
}
if (ds_list_size(global.prt_list) == 1) {
	prt_add(gi);
	prt_add(mana);
	prt_add(copper);
	prt_add(iron);
	prt_add(gold);
	prt_add(dota_ball);
	prt_add(0);
	prt_add(1);
	prt_add(2);
	prt_add(2);
}
prt_val_set(Val.ball, 0);

charging = 0;
time_charging = 0;
a_charging = 0;
fire_charging = 0;
a_possible_time = 0;
color = c_white;
charging_color = 0;
color_cycle = 0;
bullet = 0 // 산타 탄창
skill_con = 0 // 연속 시전 스킬 횟수
skill_con_time = 0 //연속 시전 스킬 지속
global.show_me = false;

function set_val_dif(val1, _serve_val, _buff_type) {
	var val2 = val1 + "1";
	var real_val1 = variable_instance_get(self, val1);
	var real_val2 = variable_instance_get(self, val2);
	if (real_val1 != real_val2) {
		variable_instance_set(self, val2, real_val1);
		server77_equal(_serve_val, real_val1, _buff_type);
	}
}

function light_set(_bool) {
	lighting = _bool;
	light_time = 0;
	draw_lighting = _bool
}

function do_func(_func) {
	if (_func != undefined) {
		var foo = method(self, _func);
		foo();
	}
}

function mana_gi_control(val) {
	if (instance_exists(obj_card_manager)) {
		if (obj_card_manager.get_playing_name() == "초죽음") {
			return val * 0.5;
		}
	}
	return val;
}

function skill_mana(_val_max, _val, _act, _func = undefined, _hp = -1, _a_a_cooltime = -1) {
	_val = mana_gi_control(_val);
	if (_a_a_cooltime != -1 and a_a_cooltime > 0) {
		skill_say_time = 30;
		skill_say = "이미 시전 중입니다.";
		return;
	}
	if (hp > _hp) {
		if (a_cooltime <= 0) {
			if (mana >= _val_max) {
				prt_val_add(Val.mp, -_val);
				if (_hp != -1) hp -= _hp;
				if (_a_a_cooltime != -1) a_a_cooltime = _a_a_cooltime;
				if (_act != noone) normal_play(_act);
				do_func(_func)
			}
			else {
				if !(audio_is_playing(snd_not_Suffice)) audio_play_sound(snd_not_Suffice, 1, false);
				skill_say_time = 30;
				skill_say = string("MP: {0} / {1}({2})", string(mana), string(_val), string(_val_max));
			}
		}
	}
	else {
		if !(audio_is_playing(snd_not_Suffice)) audio_play_sound(snd_not_Suffice, 1, false);
		skill_say_time = 30;
		skill_say = string("HP: {0} / {1}({2})", string(hp), string(_hp), string(_hp));
	}
}
function spin_steadly_start(_val, _delta = 0) {
	spin_steadly = _val;
	spin_val = 0;
	spin_val_delta = _delta;
}
function skill_gi(_val_max, _val, _act, _func = undefined) {
	_val = mana_gi_control(_val);
	if (a_cooltime <= 0) {
		if (gi >= _val_max) {
			prt_val_add(Val.gi, -_val);
			if (_act != noone) normal_play(_act);
			do_func(_func)
		}
		else {
			if !(audio_is_playing(snd_not_Suffice)) audio_play_sound(snd_not_Suffice, 1, false);
			skill_say_time = 30;
			skill_say = string("GI: {0} / {1}({2})", string(gi), string(_val), string(_val_max));
		}
	}
}

function skill_gi_and_mana(_mana_max, _gi_max, _mana, _gi, _act, _func = undefined) {
	_mana = mana_gi_control(_mana);
	_gi = mana_gi_control(_gi);
	if (a_cooltime <= 0) {
		if (gi >= _gi_max) {
			if (mana >= _mana_max) {
				prt_val_add(Val.gi, -_gi);
				prt_val_add(Val.mp, -_mana);
				if (_act != noone) normal_play(_act);
				do_func(_func)
			}
			else {
				if !(audio_is_playing(snd_not_Suffice)) audio_play_sound(snd_not_Suffice, 1, false);
				skill_say_time = 30;
				skill_say = string("MP: {0} / {1}({2})", string(mana), string(_mana), string(_mana_max));
			}
		}
		else {
			if !(audio_is_playing(snd_not_Suffice)) audio_play_sound(snd_not_Suffice, 1, false);
			skill_say_time = 30;
			skill_say = string("GI: {0} / {1}({2})", string(gi), string(_gi), string(_gi_max));
		}
	}
}

function target_start(_val) {
	if (_val) instance_create_depth(global.window_width / 2 - 300, global.window_height / 2 , depth, obj_target_show);
	targeting = _val;
	targeting_time = 20;
	cur_target = noone;
}//타겟팅

function skill_start(_type, _level) {
	var _name =  sprite_get_name(_type);
	var _skill_str = noone;
	switch(_level) {
		case 0:
			_skill_str = global.Dskill;
		break;
		case 1:
			_skill_str = global.Qskill;
		break;
		case 2:
			_skill_str = global.Wskill;
		break;
		case 3:
			if (keyboard_checkE) return;
			_skill_str = global.Eskill;		
		break;
		case 4:
			_skill_str = global.Rskill;
		break;
	}
	//먼저 몇차 스킬인지에 따라 Dskill, Qskill, Wkill를 정합니다. 이유는 Dskill에 1차스킬, Qskill에 2차스킬이 있는 형태이기 때문입니다.
	if (variable_struct_exists(_skill_str, _name)) {
		var _str = _skill_str[$ _name];
		if (_str.exception) {
			switch(_level) {
				case 0:
					skillD_exception(_type);
				break;
				case 1:
					skillQ_exception(_type);
				break;
				case 2:
					skillW_exception(_type);
				break;
				case 3:
					skillE_exception(_type);
				break;
				case 4:
					skillR_exception(_type);
				break;
			}
			//만약 구조체로 넣을수 없는 복잡한 스킬이라면 skill_exception에 따로 적어둔 내용이 실행되도록
		}
		else {
			var _mana_max = _str.mana_max();
			var _mana = _str.mana();
			var _gi_max = _str.gi_max();
			var _gi = _str.gi_max();
			if (_str.gi() == 0) {
				skill_mana(_mana_max, _mana, _str.timeline(), _str.func);
			}
			else if (_str.mana() == 0) {
				skill_gi(_gi_max, _gi, _str.timeline(), _str.func);
			}
			else {
				skill_gi_and_mana(_mana_max, _gi_max, _mana, _gi, _str.timeline(), _str.func);
			}
			//여기서 마나와 기 둘다 사용하는지? 혹은 하나만 사용하지를 결정하여 실행합니다.
		}
	}
}

function skillD_exception(_type) {
	switch(_type) {
		case spr_hat1 :
			if (level != 4) {
				skill_mana(48, 48, yellow_1_act);
			}
			else {
				skill_mana(35, 35, yellow_1_act1);
				//옐로우캡 부분
			}
		break;
							
		case spr_hat72:
		if (bullet < 6) {
			skill_mana(17, 17, snow_1_act);
		}
		else {
			skill_say_time = 30;
			skill_say = "이런, 총알이 가득찼다. ' 6/6 '";
		}
		break;
							
		case spr_hat6 :
			
				switch(level)
				{
					case 0:
						skill_mana(5, 5, ssg_1_act);
						break;
					case 1:
						skill_mana(10, 10, ssg_1_act);
						break;
					case 2:
						skill_mana(18, 18, ssg_1_act);
						break;
					case 3:
						skill_mana(40, 40, ssg_1_act);
						break;
				}
			
		break;//소세지 부분
							
		case spr_hat7 :
				switch(level) {
				case 0:
					skill_mana(35, 35, Timeline_none, big_skill1);
					break;
				case 1:
					skill_mana(50, 50, Timeline_none, big_skill2);
					break;
				case 2:
					skill_mana(75, 75, Timeline_none, big_skill3);	
					break;
				case 3:
					skill_mana(110, 110, Timeline_none, big_skill4);	
					break;
				}
		break;//거인 부분
							
		case spr_hat22 :
			switch(normal_attack_type) {
			case spr_none:
				skill_mana(35, 35, aring_1_act, aring_speak);
				break;
			case spr_bigsaw:
				skill_mana(20, 20, aring_1_act1, aring_speak);
				break;
			}
			break;
							
		case spr_hat32 :
			if (keyboard_check(global.keye)) {
				if (level == 3) {
					skill_mana(70, 90, gili_3_act1);
				}
			}
			else {
				skill_mana(60, 60, sward_1_act);
			}
			break;
		case spr_ehat4 :
		skill_mana(50, 50, jam_3_act, undefined, 25);		
							
		case spr_hat64 :
			switch(q_attack_type) {
				case spr_sangbrush :
					skill_mana(16, 16, sang_1_act);
					break;
				case spr_sangbow :
					skill_gi(100 - level * 5, 100 - level * 5, sang_2_act);
					break;
		}
		break;
		case spr_hat5 :
		if (level > 3) {
			skill_mana(180, 180, goza_skilld);
		}
		break;
		case spr_hat69:
			if (a_cooltime <= 0) {
				var gout = false;
				for (var i = 0; i < instance_number(tree_skill12); i++) {
					var temp_id = instance_find(tree_skill12, i);
					if (temp_id.cid == global.my_cid) {
						skill_mana(15, 15, tree_1_act2);
						gout = true;
						break;
					}
				}
				for (var i = 0; i < instance_number(tree_skill32); i++) {
					var temp_id = instance_find(tree_skill32, i);
					if (temp_id.cid == global.my_cid) {
						skill_mana(25, 25, tree_1_act3);
						gout = true;
						break;
					}
				}
				if (!gout) {
					skill_mana(67, 67, tree_1_act1);
				}
			}
		break;
							
		case spr_hat70:
		if (level < 2) {
			skill_mana(0, 0, bam_1_act1, undefined, 19);
		}
		else {
			skill_mana(0, 0, bam_4_act, undefined, 19);
		}
		break;
	}
}

function skillQ_exception(_type) {
	switch (_type) {
		case spr_hat1 :
			if (level != 4) {
				skill_gi(65, 65, yellow_2_act);
			}
			else {
				skill_mana(40, 40, yellow_2_act1);
			}
			break;
			case spr_hat13 :
				skill_mana(125, 125, apple_2_act, undefined, 0, 600);
				break;
								
			case spr_hat14 :
			if (a_cooltime <= 0) {
				if (a_a_cooltime <= 0) {
				if (mana >= 40) {
					prt_val_add(Val.mp, -40);
					normal_play(sward_2_act);
					arm_all_normal();
					a_a_cooltime = 240
					a_possible = false;
					arm_type = "attack"
					arm_type_more = "apple_1";
					cancle_able = true;
					arm_movement(13, -13, 2, 2);
					shild = true;
					effect_index = effect_shild
					effect_index_num = 0;
					temp_YA = YA;
					server202_sound(sward_2_sound);
					server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
					server77_equal(serve_val.effect_index_num, 0, buffer_bool);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 40(40)";
				}
			}
			else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime /40) + "초";
				}
			}
			break;
								
			case spr_hat43 :
			if (a_cooltime <= 0) {
			if (a_a_cooltime <= 0) {
				if (mana >= 25) {
					prt_val_add(Val.mp, -25);
					normal_play(sward_2_act);
					arm_all_normal();
					a_a_cooltime = 200
					a_possible = false;
					arm_type = "attack"
					arm_type_more = "apple_1";
					cancle_able = true;
					arm_movement(13, -13, 2, 2);
					shild = true;
					effect_index = effect_shild
					effect_index_num = 0;
					temp_YA = YA;
					server202_sound(sward_2_sound);
					server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
					server77_equal(serve_val.effect_index_num, 0, buffer_bool);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 25(25)";
				}
			}
			else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime /40) + "초";
				}
			}								
			break;

								
			case spr_hat22:
				switch(normal_attack_type){
					case spr_bigsaw :
						skill_mana(24, 24, aring_2_act);
						break;
					case spr_none :
						skill_mana(60, 60, aring_2_act);
						break;
				}
				break;
			case spr_hat23:
				skill_mana(120, 110, wing_2_act, undefined, 0, 0);
				break;
								
			case spr_hat32 :
			if (a_cooltime <= 0) {
				if (keyboard_check(global.keye)) {
					if (level == 3) {
						skill_mana(40, 40, EQ_1_act);
					}
				}
				else {
					skill_mana(60, 60, twiza_1_act);
				}
			}
			break;
		case spr_hat5:
		if (a_cooltime <= 0) {
			if (hp > 50) {
				if (mana >= 10) {
					prt_val_add(Val.mp, -10);
					normal_play(goza_2_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 10(10)";
				}
			}
			else {
				skill_say_time = 30;
				skill_say = "HP: " + string(hp) + " / '1'(50)";
			}
		}
		break;

		case spr_hat59:
		if (a_cooltime <= 0) {
			if (item_index != -1) {
				if (mana >= 48) {
					prt_val_add(Val.mp, -48);
					item_table(clock_ui);
					clock_ui = 54;
					item_index = -1;
					obj_clock_ui.item_num = 1
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 48(48)";
					}
				}
				else {
					skill_say_time = 40;
					skill_say = "최근에 사용한 아이템이 없다.";
				}
			}
		break;
		case spr_hat61:
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (gi >= 58) {
					a_a_cooltime = 320
					prt_val_add(Val.gi, -58);
					normal_play(nin_2_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 58(58)";
				}
			}
		}
		break;
		case spr_hat64 :
		if (a_cooltime <= 0) {
		switch(d_attack_type) {
			case spr_sangbrush :
			if (a_a_cooltime <= 0) {
					if (gi >= 20) {
						prt_val_add(Val.gi, -20)
						normal_play(sang_change);
					}
					else {
						skill_say_time = 30;
						skill_say = "GI: " + string(gi) + " / 20(20)";
					}
				}
			break;
			case spr_sangbow :
			if (a_a_cooltime <= 0) {
					if (gi >= 20) {
						prt_val_add(Val.gi, -20)
						normal_play(sang_change1);
					}
					else {
						skill_say_time = 30;
						skill_say = "GI: " + string(gi) + " / 20(20)";
					}
				}
			break;
		}
		break;
		}
		case spr_hat68 :
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (a_possible = true) {
					if (mana >= 120) {
						prt_val_add(Val.mp, -120);
						normal_play(music_2_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 120(120)";
					}
				}
			}
		}
		break
		case spr_hat69 :
		if (a_cooltime <= 0) {
			if (a_a_cooltime <= 0) {
				if (mana >= 30) {
					prt_val_add(Val.mp, -30);
					normal_play(tree_2_act1);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 37(37)";
				}
			}
			else {
				skill_say_time = 30;
				skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
			}
		}
		break;
		case spr_hat72:
					switch( w_attack_type) {
							default:
								if (bullet > 0) {
									if (a_cooltime <= 0) {
										if (gi >= 85) {
											bullet -= 1
											prt_val_add(Val.gi, -85);
											normal_play(snow_2_act);
										}
										else {
											skill_say_time = 30;
											skill_say = "GI: " + string(gi) + " / 85(85)";
										}
									}
								}
								else {
									skill_say_time = 30;
									skill_say = "' 총알이 부족해. 0/6 '";
								}
							break;
							}
						break;
		case spr_hat75:
			if (a_cooltime <= 0) {
				if (hp >= 16) {
					if(combo > 0) {
						hp -= 15
						normal_play(sli_2_upgrade);
					}
					else {
							hp -= 15
							normal_play(sli_2_act);
					}
				}
				else {
					skill_say_time = 30;
					skill_say = "HP: " + string(hp) + " / 15(15)";
				}
		}
	}	
}
	
function skillW_exception(_type) {
	switch(_type) {
		case spr_hat1 :
		if (level != 4) {
			if (a_cooltime <= 0) {
				if (mana >= 70) {
					prt_val_add(Val.mp, -70);
					normal_play(yellow_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 70(70)";
				}
			}
		}
		else {
			if (a_cooltime <= 0) {
				if (mana >= 40) {
					prt_val_add(Val.mp, -40);
					normal_play(yellow_3_act11);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 40(40)";
				}
			}
		}
		break;
								
		case spr_hat11 :
			if (a_cooltime <= 0) {
				if(a_a_cooltime <= 0) {
					if (gi >= 150) {
						prt_val_add(Val.gi, -150)
						normal_play(bwiza_3_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "GI: " + string(gi) + " / 150(150)"
					}
				} 
				else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime / 40) + "초";
				}
			}
		break;	
								
		case spr_hat29 :
		if (a_cooltime <= 0) {
			if (a_a_cooltime <= 0) {
				if (gi >= 170) {
					prt_val_add(Val.gi, -170)
					normal_play(ane_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 170(170)";
				}
			}
			else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime / 40) + "초";
				}
		}
		break;
								
		case spr_hat31 :
		if (level < 3) {
		if (a_cooltime <= 0) {
			if(a_a_cooltime <= 0) {
				if (gi >= 250) {
					prt_val_add(Val.gi, -250);
					normal_play(mine_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 250(250)";
				}
			}
			else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime / 40) + "초";
			}
		}
		}
		else {
			if(a_cooltime <= 0) {
			if(a_a_cooltime <= 0) {
				if (gi >= 200) {
					prt_val_add(Val.gi, -200);
					normal_play(mine_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 200(200)";
				}
			}
			else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime / 40) + "초";
			}
		}
	}
	break;
															
		case spr_hat32 :
			if (a_cooltime <= 0)	{
				if (keyboard_check(global.keye)) {
					if (level == 3) {
						if (mana >= 60) {
							if (gi >= 60) {
								prt_val_add(Val.gi, -60);
								prt_val_add(Val.mp, -60);
								normal_play(wing_1_act);
							}
							else {
								skill_say_time = 30;
								skill_say = "GI: " + string(gi) + " / 60(60)";
							}
						}
						else {
							skill_say_time = 30;
							skill_say = "MP: " + string(mana) + " / 60(60)";
						}
					}
				}
				else  {
					if (gi >= 40) {
						prt_val_add(Val.gi, -40)
						normal_play(healer_1_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "GI: " + string(gi) + " / 40(40)";
					}
				}
			}
		break;
								
		case spr_hat40 :
		if (a_cooltime <= 0) {
			if (stemina >= 70) {
				stemina -= 120;
				normal_play(fighter_3_act);
			}
			else {
				skill_say_time = 30;
				skill_say = "스테미나: " + string(stemina) + " / 120(70)";
			}
		}
		break;
		
		case spr_hat47:
		if (a_a_cooltime <= 0) {	
			if (a_cooltime <= 0) {
				if (mana >= 30) {
					a_a_cooltime = 200
					prt_val_add(Val.mp, -30);
					normal_play(gilmak_3_act);
				}		
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 30(30)";
				}
			}
		}
	break;
							
	case spr_hat51:
	if (a_a_cooltime <= 0) {
		if (a_cooltime <= 0) {
			if (gi >= 185) {
				a_a_cooltime = 630
				prt_val_add(Val.gi, -185)
				normal_play(pota_3_act);
			}
			else {
				skill_say_time = 30;
				skill_say = "GI: " + string(gi) + " / 185(185)";
			}
		}
	}
	break;
							
	case spr_hat53:
		if(a_a_cooltime <= 0) {
			if(gi >= 150) {
				hp = hp * 0.6;
				prt_val_add(Val.gi, -150);
				normal_play(he_3_act)
		}
		else {
			skill_say_time = 30;
			skill_say = "GI: " + string(gi) + " / "  + "150(150)";
		}
	}
break;
		case spr_hat72:
			if (bullet > 0) {
				if (a_cooltime <= 0) {
					if (mana >= 19) {
						bullet -= 1
						prt_val_add(Val.mp, -19);
						normal_play(snow_4_act1);
						}
						else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 19(19)";
						}       
				}
			}
			else {
					skill_say_time = 30;
					skill_say = "' 총알이 부족해. 0/6 '"
			}
		break;		
		case spr_hat57:
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (mana >= 38) {
					prt_val_add(Val.mp, -38)
					normal_play(ma_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 38(38)";
				}
			}
		}
		break;
		case spr_hat62:
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (gi >= 150) {
					prt_val_add(Val.gi, -150);
					normal_play(newb_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GP: " + string(gi) + " / 150(150)";
				}
			}
		}
		break;
		case spr_hat64:
			switch(w_attack_type) {
			case spr_sangbrush :
			if (x_cooltime <= 0) {
				if (a_cooltime <= 0) {
					if (mana >= 55) {
						prt_val_add(Val.mp, -55);
						normal_play(sang_3_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 55(55)";
					}
				}
			}
			break;
			default:
				if (a_cooltime <= 0) {
					if (mana >= 54) {
						prt_val_add(Val.mp, -54);
						normal_play(sang_3_act1);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 54(54)";
					}
				}
			break;
			}
		break;
		case spr_hat66 :
		if (a_cooltime <= 0) {
			if (a_a_cooltime <= 0) {
			if (gi >= 61) {
				prt_val_add(Val.gi, -61);
				normal_play(bb_3_act);
			}
			else {
				skill_say_time = 30;
				skill_say = "GI: " + string(gi) + " / 61(61)";
			}
		}
			else {
				skill_say_time = 30;
				skill_say = "쿨타임: " + string(a_a_cooltime / 40) + "초";
			}
		}
		break;
		case spr_hat67 :
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (gi >= 200) {
					a_a_cooltime = 1200
					prt_val_add(Val.gi, -200);
					normal_play(yo_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 200(200)";
				}
			}
		}
		break
		case spr_hat69 :
		if (a_cooltime <= 0) {
			var gout = false;
			for (var i = 0; i < instance_number(tree_skill12); i++) {
				var temp_id = instance_find(tree_skill12, i);
				if (temp_id.cid == global.my_cid) {
					if (gi >= 175) {
						prt_val_add(Val.gi, -175);
						normal_play(tree_3_act2);
					}
					else {
						skill_say_time = 30;
						skill_say = "GP: " + string(mana) + " / 175(175)";
					}
					gout = true;
					break;
				}
			}
			if (!gout) {
				if (mana >= 30) {
					prt_val_add(Val.mp, -30);
					normal_play(tree_3_act1);
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 30(30)";
				}
			}
		}
		break;
							 
		case spr_hat70 :
		if(undying = false) {
			if (a_cooltime <= 0) {
				if (hp > 33) {
					hp -= 33;
					normal_play(bam_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "hp: " + string(hp) + " / 33(33)";
				}
			}
		}
		else {
			if (a_cooltime <= 0) {
				hp -= 37
				normal_play(bam_3_act);
			}
		}
		break;

		case spr_hat74 :
			if (x_cooltime <= 0) {
				if(a_cooltime <= 0) {
					if (gi >= 250) {
						prt_val_add(Val.gi, -250);
						normal_play(ski_3_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "GI: " + string(gi) + " / 250(250)";
						}
					}
				} 
			break;
		case spr_hat75:
			if (skill_index != -1) {
				if (a_cooltime <= 0) {
					if (gi >= 125) {
						if (combo < 1) {
							prt_val_add(Val.gi, -125);
							normal_play(skill_index);
							skill_index = -1
						}
						else {
							prt_val_add(Val.gi, -125);
							normal_play(skill_index);	
						}
												
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(gi) + " / 125(125)";
				}
			}
		}
		else {
			skill_say_time = 30;
			skill_say = "사용할 수 있는 스킬이 없다.";
		}
		break;
	}
}	
	
function skillE_exception(_type) {
	switch(_type)
	{
		case spr_hat26 :
			if (a_cooltime <= 0) {
				if(a_a_cooltime <= 0) {
					if (mana >= 99) {
						prt_val_add(Val.mp, -99);
						normal_play(mili_4_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 99(99)";
					}
				}
				else {
						skill_say_time = 30;
						skill_say = "쿨타임: " + string(a_a_cooltime /40) + "초";
				}
			}		
		break;
		
		case spr_hat27 :
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (mana >= 55) {
					prt_val_add(Val.mp, -55);
					normal_play(charge_4_act);
					}
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 55(55)";
				}
			}
			else {
				skill_say_time = 30;
				skill_say = "쿨타임: " + string( a_a_cooltime / 40 ) + "초";
		}
		break;
								
		case spr_secret:
			if (a_cooltime <= 0) {
				if(a_a_cooltime <= 0) {
					if (mana >= 10) {
						prt_val_add(Val.mp, -8);
						normal_play(bwiza_4_but);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 11(8)";
					}
				}
				else {
					skill_say_time = 30;
					skill_say = "쿨타임: " + string(a_a_cooltime/ 40) + "초";
				}
			}
		break;
								
		case spr_hat41:
			if (a_cooltime <= 0) {
				if (gi > 50) {
					prt_val_add(Val.gi, -50)
					normal_play(shit_4_act)
				}
				else {
					if (mana >= 100) {
						prt_val_add(Val.mp, -100);
						normal_play(shit_4_act);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 100(100)";
					}
				}
			}
		break;
								
		case spr_hat45 :
		if(a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (gi >= 150) {
					prt_val_add(Val.gi, -150);
					normal_play(fheal_4_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 150(150)";
				}
			}
		}
		else {
			skill_say_time = 30;
			skill_say = "마법진은 단 1개만 소환 가능하다.";
		}
		break;
		case spr_hat56:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi > 550) {
					prt_val_add(Val.gi, -550)
					normal_play(t_killer44)
				}
				else {
					if (mana >= 190) {
						prt_val_add(Val.mp, -350);
						normal_play(t_killer44);
					}
					else {
						skill_say_time = 30;
						skill_say = "MP: " + string(mana) + " / 350(190)";
					}
				}
			}
			else {
				skill_say_time = 30;
				skill_say = "쿨타임:" + string(a_a_cooltime / 40) + "초" ;
			}
		break;
		case spr_hat59 :
		if(x_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (gi >= 220) {
					prt_val_add(Val.gi, -220);
					normal_play(time_4_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 220(220)";
				}
			}
		}
		break;
		case spr_hat75:
			if (a_cooltime <= 0) {
				if (mana >= 77) {
					if(combo > 0) {
						prt_val_add(Val.mp, -77)
						normal_play(hunt_4_act);
						hp -= (hp * 0.3);
					}
					else {
						prt_val_add(Val.mp, -77)
						normal_play(sli_4_act);
					}
				}
				else {
					skill_say_time = 30;
					skill_say = "MP: " + string(mana) + " / 77(77)";
				}
			}
		break;
		case spr_hat72:
		if (a_a_cooltime <= 0) {
			if (a_cooltime <= 0) {
				if (gi >= 124) {
					a_a_cooltime = 240
					prt_val_add(Val.gi, -124)
					normal_play(snow_3_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 124(124)";
				}
			}
		}
		break;
	}	
}

function skillR_exception(_type) {
	switch(_type)
	{
		case spr_level5_hat1 :
		if (level == 4) {
			if (a_cooltime <= 0) {
				if (gi >= 600) {
					prt_val_add(Val.gi, -600)
					normal_play(bili_5_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 600(600)";
				}
			}
		}
		break;
								
		case spr_ehat4:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi >= 100) {
					prt_val_add(Val.gi, -100)
					normal_play(ehat_5_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 100(100)";
				}
			}
		break;
								
		case spr_level5_hat10:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi >= 40) {
					prt_val_add(Val.gi, -40)
					normal_play(musa_5_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 40(40)";
				}
			}
		break;
		case spr_level5_hat11:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi >= 25) {
					prt_val_add(Val.gi, -25)
					normal_play(mine_2_but11);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 25(25)";
				}
			}
		break;
		case spr_level5_hat15:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi >= 75) {
					prt_val_add(Val.gi, -75)
					normal_play(EQ_1_act2);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 75(75)";
				}
			}
		break;
		case spr_level5_hat17:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi >= 75) {
					prt_val_add(Val.gi, -75)
					normal_play(oda_5_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 75(75)";
				}
			}
		break;
		case spr_level5_hat18:
			if (a_cooltime <= 0 and a_a_cooltime <= 0) {
				if (gi >= 300) {
					prt_val_add(Val.gi, -300)
					normal_play(mol_5_act);
				}
				else {
					skill_say_time = 30;
					skill_say = "GI: " + string(gi) + " / 300(300)";
				}
			}
		break;
	}	
}

surf_xoffset = global.surf_xoffset;
surf_yoffset = global.surf_yoffset;
function testing_surf_set() {
	if (!surface_exists(surf)) {
		surf = surface_create(2048, 2048);
	}
	surface_set_target(surf);
	draw_clear_alpha(c_white, 0);
	if (live =0) {
		draw_sprite_ext(spr_rip,0,surf_xoffset,surf_yoffset,1,1,YA,-1,1);
		draw_sprite_ext(spr_rip,1,surf_xoffset,surf_yoffset,1,1,YA,-1,1);
		shader_set(shGrayscale);
	}
	if (live = 1) {
		if (draw_lighting) {
			gpu_set_fog(true, c_white, 0, 1000);
		}
		if(only_hat == false) {
		var a, f;
		if (global.hat == spr_hat39 and level == 3) {
			a = spr_arm31
			f = spr_foot22;
		}
		else {
			a = global.arm;	
			f = global.foot;
		}
		draw_sprite_ext(effect_index_under, effect_index_num, effect_x, effect_y, 1, 1, effect_YA,color,alpha);
		switch(hide_bam) {
		case false:
		    draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale, left_foot_yscale, left_foot_YA, color, alpha);//왼발
		    draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale , right_foot_yscale , right_foot_YA, color, alpha);//오른발
		    draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale , left_arm_yscale , left_arm_YA, color, alpha);//왼손
		    draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale , right_arm_yscale , right_arm_YA, color, alpha);//오른손
		break;
		default:
		    draw_sprite_ext(f, 0, footL_x, footL_y, left_foot_xscale , left_foot_yscale , left_foot_YA, color, 0);//왼발
		    draw_sprite_ext(f, 0, footR_x, footR_y, right_foot_xscale , right_foot_yscale , right_foot_YA, color, 0);//오른발
		    draw_sprite_ext(a, 0, armL_x, armL_y, left_arm_xscale , left_arm_yscale , left_arm_YA, color, 0);//왼손
		    draw_sprite_ext(a, 0, armR_x, armR_y, right_arm_xscale , right_arm_yscale , right_arm_YA, color, 0);//오른손
		break;
		}//팔
		}
	}
	if (sturn = 0)
	{
		switch (face_variable)
		{
			case 0:
				switch(global.face) {
						case spr_e4:
							draw_sprite_ext(spr_e4,-1,face_x,face_y,1,1,face_YA,-1,alpha);
						break;
						default:
						switch(hide_bam) {
							case false:
							    draw_sprite_ext(global.face,0,face_x,face_y,1,1,face_YA,color,alpha);
							break;
							default:
							    draw_sprite_ext(global.face,0,face_x,face_y,1,1,face_YA,color,0);
							break;
						}
					break;
					}
			break;
			case 1:
				draw_sprite_ext(spr_hunt_face,face_frame,face_x,face_y,1,1,face_YA,color,alpha);
			break;
		}
	
	}
	if(sturn > 0)
	{
		ser_eface(global.face);
	}
	if (hat_bye == false or hide_bam == true) {
		if(global.hat != spr_hat6) {
			if (instance_exists(see_skill31)) {
				draw_sprite_ext(buff_see3,-1,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha);// 모자
			}
			else {
				if (level == 4) {
					switch(global.hat) {
						case spr_hat5:
						case spr_hat1:
						    draw_sprite_ext(global.hat,sprite_get_number(global.hat) - 1,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha);
					    break;
						case spr_level5_hat12:
							draw_sprite_ext(global.hat,-1,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha);
						break;
						default:
						    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale , 1,hat_YA + hat_angle,color,alpha);
				        break;
					}
				}
				else {
			        if (global.hat != spr_level5_hat12) {
						if (global.hat == spr_hat77 and babo_change == true) {
							draw_sprite_ext(spr_hat77_another,level + global.skin * 4,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha);
						}
						else {
							switch(hide_bam) {
								case false:
								    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha)// 모자
								break;
								default:
								    draw_sprite_ext(global.hat,level + global.skin * 4,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,0)
								break;	
							}
						}
					}
				    else {
					    draw_sprite_ext(global.hat,-1,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha);
					}
				}
			}
		}
		else {
			var spr_hat_array = [spr_hat6_1, spr_hat6_2, spr_hat6_3, spr_hat6_4];
			draw_sprite_ext(spr_hat_array[level], global.skin,hat_x,hat_y,hat_xscale  ,1,hat_YA + hat_angle,color,alpha);
		}
	}
	
	draw_sprite_ext(spr_armr_more, spr_arm_more_num, armR_more_x, armR_more_y, right_arm_xscale, right_arm_yscale, arm_moreR_YA,color,alpha);
	draw_sprite_ext(spr_arml_more, spr_arm_more_num, armL_more_x, armL_more_y, left_arm_xscale, left_arm_yscale, arm_moreL_YA,color,alpha);
	surface_reset_target();
}
targeting_array = [];
targeting_time = 20;
targeting = false;
cur_target = noone;
cur_target_index = 0;
target_dir = 0;	
keyboard_checkE = false;
keyboard_checkQ = false;
babo_angle1 = 0;
babo_angle2 = 0;
is_babo_angle = false;
is_babo_angle_show = false;
seq = -1;
seq_seq = -1;
seq_sequence = -1;
seq_layer = layer_create(depth, "seq_layer");
arm_moreL_YA = 0;

function seq_start(_seq) {
	if (seq == -1) {
		seq = layer_sequence_create(seq_layer, 0, 0, _seq);
		seq_seq = layer_sequence_get_instance(seq);
		seq_sequence = layer_sequence_get_sequence(seq);
	}	
}

function seq_end() {
	if (seq != -1) layer_sequence_destroy(seq);
	seq = -1;
	seq_seq = -1;
	seq_sequence = -1;
	all_YA_normal();
}

function seq_speed(_val) {
	layer_sequence_speedscale(seq_layer, _val);	
}

function all_YA_normal() {
	arm_all_normal();
	arm_moreR_YA = 0;
	hat_angle = 0;
	face_YA = 0;
	left_foot_YA = 0;
	right_foot_YA = 0;
	left_foot_YA = 0;
	right_foot_YA = 0;
}

function check_seq_is_end() {
	if (seq != -1 and seq_sequence != -1) {
		if (layer_sequence_is_finished(seq) and seq_sequence.loopmode == seqplay_oneshot) {
			layer_sequence_destroy(seq);
			seq = -1;
			seq_seq = -1;
			seq_sequence = -1;
			all_YA_normal();
		}
	}
}

function seq_to_variable() {
	if (seq_seq != -1) {
		var seq_array = seq_seq.activeTracks;
		var num = array_length(seq_array);
		var _track, _at, type, num2, rot;
		for (var i = 0; i < num; i++) {
			_at = seq_array[i];
			_track = _at.track;
			switch(_track.name) {
				case "spr_arm_left" :
					armL_x = _at.posx + surf_xoffset;
					armL_y = _at.posy + surf_yoffset;
					left_arm_YA = _at.rotation;
					left_arm_xscale = _at.scalex;
					left_arm_yscale = _at.scaley;
					break;
				case "spr_arm_right" :
					armR_x = _at.posx + surf_xoffset;
					armR_y = _at.posy + surf_yoffset;
					right_arm_YA = _at.rotation;
					right_arm_xscale = _at.scalex;
					right_arm_yscale = _at.scaley;
					break;
				case "spr_foot_left" :
					footL_x = _at.posx + surf_xoffset;
					footL_y = _at.posy + surf_yoffset;
					left_foot_YA = _at.rotation;
					left_foot_xscale = _at.scalex;
					left_foot_yscale = _at.scaley;
					break;
				case "spr_foot_right" :
					footR_x = _at.posx + surf_xoffset;
					footR_y = _at.posy + surf_yoffset;
					right_foot_YA = _at.rotation;
					right_foot_xscale = _at.scalex;
					right_foot_yscale = _at.scaley;
					break;
				case "spr_face1" :
					face_x = _at.posx + surf_xoffset;
					face_y = _at.posy + surf_yoffset;
					face_YA = _at.rotation;
					break;
				case "spr_hat1" :
					hat_x = _at.posx + surf_xoffset;
					hat_y = _at.posy + surf_yoffset;
					hat_angle = _at.rotation;
					hat_xscale = _at.scalex;
					hat_yscale = _at.scaley;
					break;
				case "spr_sward" :
					armR_more_x = _at.posx + surf_xoffset;
					armR_more_y = _at.posy + surf_yoffset;
					arm_moreR_YA = _at.rotation;
					break;
				case "effect_book" :
					effect_YA = _at.rotation;
					effect_x = _at.posx + surf_xoffset;
					effect_y = _at.posy + surf_yoffset;
					break;
			}
		}
	}
}
left_arm_xscale1 = left_arm_xscale;
left_arm_yscale1 = left_arm_yscale;
right_arm_xscale1 = right_arm_xscale;
armR_more_x = 0;
armR_more_y = 0;
arm_moreR_YA = 0;
armL_more_x = 0;
armL_more_y = 0;
armR_more_x1 = armR_more_x;
armL_more_x1 = armL_more_x;
armR_more_y1 = armR_more_y;
armL_more_y1 = armL_more_y;
arm_moreR_YA1 = arm_moreR_YA;

hat_delta_x = 0;
hat_delta_y = 0;
face_delta_x = 0;
face_delta_y = 0;

effect_x = 0;
effect_y = 0;
effect_YA = 0;

function item_twice() {
	if (a_cooltime <= 0 and timeline_position > 0) { 
		effect_card();
		first_item_play = false;
		item_table(clock_ui);
	}
}

function check_attackable() {
	return a_possible == 1 and skill_posible == true and hat_bye == false;	
}