function scr_create() {
	YA = 0;
	armor = 0
	babo_change = false;
	depth = -20;
	draw_lighting = false;
	draw_hat = spr_hat
	
	arm_moreL_YA = 0;
	armL_more_x = 0;
	armL_more_y = 0;
	armR_more_x = 0;
	armR_more_y = 0;
	protection_val = 0;
	face_x = 0;
	face_y = 0;
	face_delta = 0;
	hide_bam = false
	up_skill = 0
	stats6_type = 0
	surf = -1;
	m_hp = 100;
	eiu = spr_none;
	hp = 100;
	skin = 0;
	surf_xoffset = global.surf_xoffset;
	surf_yoffset = global.surf_yoffset;
	m_mana = 200;
	m_sturn = 0;
	hat_x = 0;
	hat_y = 0;
	arm_moreR_YA = 0;
	armR_more_x = 0;
	armR_more_y = 0;
	mana = 200;

	m_stemina = 100;

	stemina = 100;

	m_aexp = 600;

	aexp = 0;

	main_speed = 6;

	a_cooltime = 0;

	hat_frame = 0;
	face_frame = 0;

	a_cycle = 10;
	f_cycle = 10;
	arm_tabcooltime = -1;

	gi = 0;
	m_gi = 600;

	level = 0;

	a_possible = 1;
	face_variable = 0;

	frame_level_up = 0;

	live = 1;
	sturn = 0;

	solid = true;
	persistent = true;
	image_speed =10;
	say_time = 0;
	alarm_set(11,15);
	alarm_set(10,1);
	only_move = 1;
	only_move_frame = 1;
	sprite_set_cache_size (testing,2);
	buff_place = 0
	effect_index_num = -1;
	hat_bye = false;
	chat_one = ""
	state = 0;
	hat_yscale = 1;
	cid = 0;
	testing_cid = real(string_digits(object_get_name(object_index)));
	alarm_set(9,1);
	alive = 0;
	play_skill = 0;
	other_cid = 0;
	extra_speed = 0;
	hat_frame = 0;
	all_spin = 0;
	temp_YA = YA;
	name = "";
	team = 0;
	face_frame_num = 0
	hat_xscale = 1
	hat_YA = 0;
	hat_angle = 0
	face_YA = 0;
	cancle_able = false;
	charge = 0;
	arm_type = "normal"
	arm_type_num = 0;
	left_arm_YA = 0;
	right_arm_YA = 0;
	left_arm_xscale = 1;
	right_arm_xscale = -1;
	left_arm_yscale = 1;
	right_arm_yscale = 1;
	hat_scale = 1;
	stats = 0
	stats_speed = 0
	buff_speed = 0
	d_attack_type = spr_sangbrush
	q_attack_type = spr_sangbrush
	w_attack_type = spr_sangbrush
	b_cooltime = 0
	
	foot_type = "normal"
	foot_type_num = 0;
	left_foot_YA = 0;
	right_foot_YA = 0;
	left_foot_xscale = 1;
	right_foot_xscale = -1;
	left_foot_yscale = 1;
	right_foot_yscale = 1;


	arm_type_more = "none"
	spr_arm_more_num = 0;
	spr_arm_morex = 0;
	spr_arm_morey = 20;
	big_val = 1;

	hat = spr_hat1;
	foot = spr_foot1;
	face = spr_face1;
	arm = spr_arm1;

	spr_armr_more = spr_none;
	spr_arml_more = spr_none;
	effect_index = spr_none;
	effect_num = 0;

	left_arm_deltax = 0;
	left_arm_deltay = 0;
	right_arm_deltax = 0;
	right_arm_deltay = 0;

	left_foot_deltax = 0;
	left_foot_deltay = 0;
	right_foot_deltax = 0;
	right_foot_deltay = 0;

	footL_x = x
	footR_x = x
	footL_y = y
	footR_y = y

	armL_x = x
	armR_x = x
	armL_y = y
	armR_y = y
	buff_index = spr_none;
	only_hat = false;
	alpha = 1;
	terror_charge = 0;
	skill_con = 0
	skill_con_time = 0

	testhat = instance_create_depth(x, y, 0, obj_temp);
	with(testhat)
	{
		cid_id = other.object_index;
		instance_change(testing_hat, true);
	}

	charging = 0;
	time_charging = 0;
	a_charging = 0;
	fire_charging = 0;
	a_possible_time = 0;
	color = c_white;
	charging_color = 0;
	color_cycle = 0;
}
