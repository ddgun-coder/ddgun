YA = 0;

depth = -20;
level = 0;
m_hp = 100;
distanc_to_testing = 9999;

hp = m_hp;
cancle_able = false;
ai_state = state.IDLE;
enum state{
	IDLE,
	MOVE,
	ATTACK
}
grid = noone;
ai_path = path_add();
m_mana = 200;

halt = true;

mana = 20;

m_stemina = 100;

surf_xoffset = global.surf_xoffset;
surf_yoffset = global.surf_yoffset;

stemina = 100;

ai_index = 1;
ai_index_to = global.cid_array[ai_index];

m_aexp = 600;

aexp = 0;
alpha = 1;

main_speed = 5;

a_cooltime = 0;

a_cycle = 10;
f_cycle = 10;

arm_tabcooltime = -1;
gi = 0;
m_gi = 600;
buff_speed = 0;
a_possible = true;
face_variable = 0;
high_speed = 1;
frame_level_up = 0;
live = 1;
stats_speed = 0;
sturn = 0;
chat = "";
chat_point = 0;
say_time = 0;
chat2 = "";
chat3 = "";
chat4 = "";
chat5 = "";
chat1 = "";
chat6 = "";
only_move = 1;
only_move_frame = 1;
buff_place = 0
chat_one = ""
cid = 0;
alarm_set(9,1);
play_skill = 0;
other_cid = 0;
extra_speed = 0;
hat_frame = 0;
all_spin = 0;
all_spin_limit = 0;
temp_YA = YA;
open_key1 = true;
skill_posible = true;
copper = 0;
iron = 0;
gold = 0;
dota_ball = 0;
hat_angle = 0;
hat_YA = 0;
pickaxe_up = 0;
mine_say_time = 0;
mine_say = "";
trying = 0;
fun_try = 0;
pickaxe_charge = 900;
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
arm_spin_speed = 1;
arm_spin_able = 0;

star_frame = 0;
star_frame_s = 0;

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

charging = 0;
time_charging = 0;
a_charging = 0;
fire_charging = 0;
a_possible_time = 0;
color = c_white;
charging_color = 0;
color_cycle = 0;
to_testingXY = false;
to_testingXY_time = 0;

other_YA = 0;

footL_x = 0;
footL_y = 0;
footR_x = 0;
footR_y = 0;
armL_x = 0;
armL_y = 0;
armR_x = 0;
hat_xscale = 1;
hat_xscale = 1;
armR_y = 0;
hat_x = 0;
hat_y = 0;
face_x = 0;
face_y = 0;
arm_moreR_YA = 0;
arm_moreL_YA = 0;
armL_more_x = 0;
armL_more_y = 0;
armR_more_x = 0;
armR_more_y = 0;
effect_x = 0;
effect_y = 0;
effect_YA = 0;
creper_die = 0;
skin = 0;
draw_lighting = false;
hide_bam = false;
only_hat = false;
effect_index_under = spr_none;
effect_index_num = 0;
babo_change = false;
face_YA = 0;
face_frame = 0;
hat_bye = false;
fishing = false;

function do_charge() {
	hp -= 20;
	sturn = 120;
	audio_play_sound(have_hit, 9,false);
	var show = instance_create_depth(x, y, depth - 1, DMG_show);
	show.d = 20;
	to_testingXY = true;
	to_testingXY_time = 100;
}
function go_to_back() {
	to_testingXY = false;
	sturn = 60;
	other_YA = testing.YA + 90;
	go_to_speed = 20;
}
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
function light_set(_bool) {
	lighting = _bool;
	light_time = 0;
	draw_lighting = _bool
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
function spin_steadly_start(_val, _delta = 0) {
	spin_steadly = _val;
	spin_val = 0;
	spin_val_delta = _delta;
}
horse = 0;
surf = -1;
seq_to_var = -1;
seq = -1;
surf_func = -1;
charge = 0;
face_delta_x = 0;
face_delta_y = 0;
face_delta = 0;
nu_on = false;

function do_func(_func) {
	if (_func != undefined) {
		var foo = method(self, _func);
		foo();
	}
}

function ai_skill_check() {
	if (a_cooltime <= 0 and sturn <= 0 and a_possible == true) {
		var _name =  sprite_get_name(hat);
		var _skill_str = noone;
		switch(level) {
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
				_skill_str = global.Eskill;
			break;
			case 4:
				_skill_str = global.Rskill;
			break;
		}
		if (variable_struct_exists(_skill_str, _name)) {
			var _str = _skill_str[$ _name];
			if (mana >= _str.mana_max() and gi >= _str.gi_max()) {
				switch (hat) {
					case spr_hat1 :
						if (distanc_to_testing <= 200) {
							do_skill(_str);
							return;
						}
					break;
				}
			}
		}
		if (distanc_to_testing <= 100) {
			norm_attack();
		}
	}
}

function do_skill(_str) {
	var _act = _str.timeline();
	var _func = _str.func;
	if (_act != noone) normal_play(_act);
	do_func(_func);
	mana -= _str.mana();
	return;
}