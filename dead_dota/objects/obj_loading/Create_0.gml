/// @description Insert description here
// You can write your code in this editor
tex_array = texturegroup_get_textures("Default");
count_max = array_length(tex_array);
count = 0;
global.keyboard_array = ["keya", "keys", "keyd", "keyq", "keyw", "keye", "keyr",
"cap", "shift", "keyf", "up", "down", "left", "right", "key4", "key5", "key6", "key7"];
randomize();
#macro HAT_LIMIT 100
#macro MAX_ITME_BOX 8
#macro jj 6
global.money = 40000;
global.team = irandom(1);
var ran = irandom(99);
surface_depth_disable(true);
global.version = 286;
global.hurt_const = function(spr, damage, name, face_index, hat_index, hat_num, skill_obj) constructor {
	self.spr = spr;
	self.damage = damage;
	self.name = name;
	self.face_index = face_index;
	self.hat_index = hat_index;
	self.hat_num = hat_num;
	self.skill_obj = skill_obj;
	num = 1;
}
global.hurt_list = [];
if (ran < 10) {									 
	ran = "0" + string(ran); 
}
global.face_array = [];
for (var i = 1; i < 60; i++) {
	index = asset_get_index("spr_face" + string(i))
	if (index != -1) {	
		array_push(global.face_array, index);
	}
}
audio_group_load(audio_bgm);
audio_group_set_gain(audio_bgm, 1, 100);
global.kill_array = array_create(HAT_LIMIT, -1);
global.hat_aexp = array_create(HAT_LIMIT, -1);
global.hat_death = array_create(HAT_LIMIT, -1);
global.hat_time = array_create(HAT_LIMIT, -1);
global.hat_aexp = array_create(HAT_LIMIT, -1);
global.hat_aexp_remain = array_create(HAT_LIMIT, -1);
global.hat_level = array_create(HAT_LIMIT, -1);
global.hat_aexp_max = array_create(HAT_LIMIT, -1);
global.foot_array = [spr_foot1, spr_foot2, spr_foot5, spr_foot8, spr_foot10, spr_foot3, spr_foot9, spr_foot4, spr_foot11
, spr_foot12, spr_foot13, spr_foot14, spr_foot15, spr_foot6, spr_foot7, spr_foot16, spr_foot17, spr_foot18, spr_foot19, spr_foot20];
global.foot_index = 0;
global.sound_effect = true;
global.get_data = false;
global.surf_xoffset = 512;
global.surf_yoffset = 800;
global.wild_circle = true;
global.sub_setting = 0;
global.achievement_num = 20;
global.Dskill = {};
global.Qskill = {};
global.Wskill = {};
global.Eskill = {};
global.Rskill = {};
global.arm_index = 0;
global.arm_array = [spr_arm1, spr_arm10, spr_arm5, spr_arm4, spr_arm11, spr_arm9, spr_arm12, spr_arm16, spr_arm17
, spr_arm13, spr_arm6, spr_arm18, spr_arm2, spr_arm19, spr_arm20, spr_arm21, spr_arm14, spr_arm22, spr_arm15
, spr_arm23, spr_arm24, spr_arm25, spr_arm26, spr_arm7, spr_arm8, spr_arm27, spr_arm28, spr_arm29, spr_arm30
, spr_arm31];
#region //1차 스킬
global.Dskill[$ "spr_hat1"] = {
	timeline : function() { return yellow_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat1,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Dskill[$ "spr_level5_hat1"] = {
	timeline : function() { return yellow_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat1,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Dskill[$ "spr_hat72"] = {
	timeline : function() { return snow_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat72,
	mana_max : function() { return  17 },
	mana : function() { return  17 },
}
global.Dskill[$ "spr_hat2"] = {
	timeline : function() { return musa_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat2,
	mana_max : function() { return  55 - testing.level * 5 },
	mana : function() { return  55 - testing.level * 5 },
}
global.Dskill[$ "spr_hat50849"] = {
	timeline : function() { return p_1_act1 },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50849,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat3"] = {
	timeline : function() { return hunt_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat3,
	mana_max : function() { return  55 - testing.level * 5 },
	mana : function() { return  55 - testing.level * 5 },
}
global.Dskill[$ "spr_hat4"] = {
	timeline : function() { return EQ_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat4,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Dskill[$ "spr_hat6"] = {
	timeline : function() { return ssg_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat6,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat7"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {
		a_cooltime = 15;
		go_to_scale = 2;
		big_val_time = 400;	
	},
	exception : true,
	case_name : spr_hat7,
	mana_max : function() { return 35 },
	mana : function() { return 35 },
}
global.Dskill[$ "spr_hat8"] = {
	timeline : function() { return nu_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat8,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Dskill[$ "spr_hat9"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : random_table1,
	exception : 0,
	case_name : spr_hat9,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Dskill[$ "spr_hat10"] = {
	timeline : function() { return p_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat10,
	mana_max : function() { return  23 + 7 * testing.skill_con },
	mana : function() { return  23 + 7 * testing.skill_con },
}
global.Dskill[$ "spr_hat11"] = {
	timeline : function() { return bwiza_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat11,
	mana_max : function() { return  15 },
	mana : function() { return  20 },
}
global.Dskill[$ "spr_hat12"] = {
	timeline : function() { return twiza_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat12,
	mana_max : function() { return  54 },
	mana : function() { return  54 },
}
global.Dskill[$ "spr_hat13"] = {
	timeline : function() { return apple_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat13,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Dskill[$ "spr_hat14"] = {
	timeline : function() { return sward_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat14,
	mana_max : function() { return  60 - testing.level * 5 },
	mana : function() { return  60 - testing.level * 5 },
}
global.Dskill[$ "spr_hat15"] = {
	timeline : function() { return healer_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat15,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Dskill[$ "spr_hat35"] = {
	timeline : function() { return shep_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat16,
	mana_max : function() { return  18 },
	mana : function() { return  18 },
}
global.Dskill[$ "spr_hat16"] = {
	timeline : function() { return shep_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat16,
	mana_max : function() { return  18 },
	mana : function() { return  18 },
}
global.Dskill[$ "spr_hat17"] = {
	timeline : function() { return die_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat17,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Dskill[$ "spr_hat18"] = {
	timeline : function() { return korea_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat18,
	mana_max : function() { return  37 },
	mana : function() { return  37 },
}
global.Dskill[$ "spr_hat19"] = {
	timeline : function() { return ddr_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat19,
	mana_max : function() { return  28 },
	mana : function() { return  28 },
}
global.Dskill[$ "spr_hat20"] = {
	timeline : function() { if (testing.level < 2) {return hide_1_act} else {return hide_1_act1} },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat20,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Dskill[$ "spr_level5_hat2"] = {
	timeline : function() { return shep_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat2,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Dskill[$ "spr_level5_hat7"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : yagol_1_act,
	exception : 0,
	case_name : spr_level5_hat7,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Dskill[$ "spr_hat21"] = {
	timeline : function() { return lobo_1_act1 },
	gi_max : function() { return  60 },
	gi : function() { return  60 },
	func : undefined,
	exception : 0,
	case_name : spr_hat21,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat22"] = {
	timeline : function() { return aring_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat22,
	mana_max : function() { return 35 },
	mana : function() { return 35 },
}
global.Dskill[$ "spr_hat23"] = {
	timeline : function() { return wing_1_act },
	gi_max : function() { return 0 },
	gi : function() { return  60 },
	func : undefined,
	exception : 0,
	case_name : spr_hat23,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Dskill[$ "spr_hat24"] = {
	timeline : function() { return gili_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat24,
	mana_max : function() { return  45 },
	mana : function() { return  45 },
}
global.Dskill[$ "spr_hat25"] = {
	timeline : function() { return ik_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat25,
	mana_max : function() { return  36 },
	mana : function() { return   36 },
}
global.Dskill[$ "spr_hat26"] = {
	timeline : function() { return mili_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat26,
	mana_max : function() { return  42 },
	mana : function() { return  42 },
}
global.Dskill[$ "spr_hat29"] = {
	timeline : function() { return ane_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat29,
	mana_max : function() { return  16 },
	mana : function() { return  16 },
}
global.Dskill[$ "spr_hat30"] = {
	timeline : function() { return fwiza_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat30,
	mana_max : function() { return  72 },
	mana : function() { return  72 },
}
global.Dskill[$ "spr_level5_hat3"] = {
	timeline : function() { return ik_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat3,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_level5_hat4"] = {
	timeline : function() { return sward_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat4,
	mana_max : function() { return  28 },
	mana : function() { return  28 },
}
global.Dskill[$ "spr_secret"] = {
	timeline : function() { return yellow_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_secret,
	mana_max : function() { return  20 },
	mana : function() { return  20 },
}
global.Dskill[$ "spr_level5_hat5"] = {
	timeline : function() { return normal_attack_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat5,
	mana_max : function() { return  0 },
	mana : function() { return  0 },
}
global.Dskill[$ "spr_level5_hat6"] = {
	timeline : function() { return hunt_2_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat6,
	mana_max : function() { return  20 },
	mana : function() { return  25 },
}
global.Dskill[$ "spr_hat31"] = {
	timeline : function() { return mine_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat31,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Dskill[$ "spr_hat32"] = {
	timeline : function() { return sward_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat32,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Dskill[$ "spr_hat33"] = {
	timeline : function() { return law_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat33,
	mana_max : function() { return  110 },
	mana : function() { return  140 },
}
global.Dskill[$ "spr_hat34"] = {
	timeline : function() { return p_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat34,
	mana_max : function() { return  80 - testing.level * 10 },
	mana : function() { return  80 - testing.level * 10 },
}
global.Dskill[$ "spr_hat36"] = {
	timeline : function() { return kpower_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat36,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Dskill[$ "spr_hat37"] = {
	timeline : function() { return kesin_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat37,
	mana_max : function() { return  66 },
	mana : function() { return  66 },
}
global.Dskill[$ "spr_hat38"] = {
	timeline : function() { return fly_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat38,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Dskill[$ "spr_hat39"] = {
	timeline : function() { return lebe_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat39,
	mana_max : function() { return  57 },
	mana : function() { return  57 },
}
global.Dskill[$ "spr_hat62"] = {
	timeline : function() { return newb_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat62,
	mana_max : function() { return  45 },
	mana : function() { return  45 },
}
global.Dskill[$ "spr_hat40"] = {
	timeline : function() { return fighter_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat40,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_hat41"] = {
	timeline : function() { return shit_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat41,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Dskill[$ "spr_hat42"] = {
	timeline : function() { return wild_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat42,
	mana_max : function() { return  14 },
	mana : function() { return  14 },
}
global.Dskill[$ "spr_hat43"] = {
	timeline : function() { return spear_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat43,
	mana_max : function() { return  0 },
	mana : function() { return  32 },
}
global.Dskill[$ "spr_hat44"] = {
	timeline : function() { return pwiza_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat44,
	mana_max : function() { return  5 },
	mana : function() { return  5 },
}
global.Dskill[$ "spr_hat45"] = {
	timeline : function() { return fheal_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat45,
	mana_max : function() { return  12 },
	mana : function() { return  12 },
}
global.Dskill[$ "spr_hat46"] = {
	timeline : function() { return bandit_1_act },
	gi_max : function() { return  38 },
	gi : function() { return  38 },
	func : undefined,
	exception : 0,
	case_name : spr_hat46,
	mana_max : function() { return  32 },
	mana : function() { return  32 },
}
global.Dskill[$ "spr_hat47"] = {
	timeline : function() { return gilmak_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat47,
	mana_max : function() { return  60 },
	mana : function() { return  85 },
}
global.Dskill[$ "spr_hat48"] = {
	timeline : function() { return sans_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat48,
	mana_max : function() { return  38 },
	mana : function() { return  38 },
}
global.Dskill[$ "spr_hat49"] = {
	timeline : function() { return nuke_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat49,
	mana_max : function() { return  25 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_hat50"] = {
	timeline : function() { return sea_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Dskill[$ "spr_hat51"] = {
	timeline : function() { return pota_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat51,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Dskill[$ "spr_hat52"] = {
	timeline : function() { return jam_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat52,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Dskill[$ "spr_ehat4"] = {
	timeline : function() { return jam_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_ehat4,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Dskill[$ "spr_hat53"] = {
	timeline : function() { return he_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat53,
	mana_max : function() { return  38 },
	mana : function() { return  38 },
}
global.Dskill[$ "spr_level5_hat8"] = {
	timeline : function() { return die_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat8,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Dskill[$ "spr_level5_hat9"] = {
	timeline : function() { return sans_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat9,
	mana_max : function() { return  20 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_level5_hat10"] = {
	timeline : function() { return musa_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat10,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Dskill[$ "spr_level5_hat11"] = {
	timeline : function() { return alpha_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat11,
	mana_max : function() { return  44 },
	mana : function() { return  44 },
}
global.Dskill[$ "spr_level5_hat12"] = {
	timeline : function() { return hunt_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat12,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_level5_hat13"] = {
	timeline : function() { return shit_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat13,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Dskill[$ "spr_level5_hat14"] = {
	timeline : function() { return light_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat14,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Dskill[$ "spr_level5_hat15"] = {
	timeline : function() { return sward_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat15,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_hat54"] = {
	timeline : function() { return trol_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat54,
	mana_max : function() { return  14 },
	mana : function() { return  14 },
}
global.Dskill[$ "spr_level5_hat17"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {
		a_cooltime = 15;
		go_to_scale = 5;
		big_val_time = 600;
		big_shild = true;
		buff_time = 5 * room_speed;
		buff_index = spr_wing1;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
		left_arm_YA = 0 - 180;
		go_to_speed = 1;
		aexp += 30;
		server202_sound(wing_1_sound);
	}
	,
	exception : 0,
	case_name : spr_level5_hat17,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Dskill[$ "spr_hat55"] = {
	timeline : function() { return coca_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat55,
	mana_max : function() { return  20 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_hat56"] = {
	timeline : function() { return t_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat56,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Dskill[$ "spr_hat57"] = {
	timeline : function() { return ma_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat57,
	mana_max : function() { return  38 },
	mana : function() { return  38 },
}
global.Dskill[$ "spr_hat58"] = {
	timeline : function() { return nk_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat58,
	mana_max : function() { return  130 },
	mana : function() { return  130 },
}
global.Dskill[$ "spr_hat59"] = {
	timeline : function() { return time_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat59,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_hat60"] = {
	timeline : function() { return see_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat60,
	mana_max : function() { return  60 - testing.level * 10 },
	mana : function() { return  60 - testing.level * 10 },
}
global.Dskill[$ "spr_hat61"] = {
	timeline : function() { return nin_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat61,
	mana_max : function() { return  57 },
	mana : function() { return  57 },
}
global.Dskill[$ "spr_hat63"] = {
	timeline : function() { return tu_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat63,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Dskill[$ "spr_hat64"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat64,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat65"] = {
	timeline : function() { return eng_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat65,
	mana_max : function() { return 55 },
	mana : function() { return 55 },
}
global.Dskill[$ "spr_level5_hat18"] = {
	timeline : function() { return sward_1_act2 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat18,
	mana_max : function() { return 40 },
	mana : function() { return 40 },
}
global.Dskill[$ "spr_hat5"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat5,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat66"] = {
	timeline : function() { return bb_1_act11 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat66,
	mana_max : function() { return 38 },
	mana : function() { return 38 },
}
global.Dskill[$ "spr_hat67"] = {
	timeline : function() { return yo_1_act },
	gi_max : function() { return 50 - testing.level * 5 },
	gi : function() { return 50 - testing.level * 5 },
	func : undefined,
	exception : 0,
	case_name : spr_hat67,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat68"] = {
	timeline : function() { return music_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat68,
	mana_max : function() { return 19 },
	mana : function() { return 19},
}
global.Dskill[$ "spr_hat69"] = {
	timeline : function() { return tree_1_act2 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat69,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Dskill[$ "spr_hat70"] = {
	timeline : function() { return bam_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat70,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Dskill[$ "spr_hat71"] = {
	timeline : function() { return gun_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {skill_con += 1; skill_con_time = 100;},
	exception : 0,
	case_name : spr_hat71,
	mana_max : function() { return  22 },
	mana : function() { return  22 },
}
global.Dskill[$ "spr_hat73"] = {
	timeline : function() { return ass_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat73,
	mana_max : function() { return 26 },
	mana : function() { return 26 },
}
global.Dskill[$ "spr_hat74"] = {
	timeline : function() { return ski_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat74,
	mana_max : function() { return 52 },
	mana : function() { return 52 },
}
global.Dskill[$ "spr_hat75"] = {
	timeline : function() { if testing.combo > 0 {return sli_1_act1} else {return sli_1_act} },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat75,
	mana_max : function() { return  59 },
	mana : function() { return  59 },
}
global.Dskill[$ "spr_hat76"] = {
	timeline : function() { return hammer_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat76,
	mana_max : function() { return 50 },
	mana : function() { return 50 },
}
global.Dskill[$ "spr_hat77"] = {
	timeline : function() { if testing.babo_change {return babo_1_act_another} else {return babo_4_act} },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat77,
	mana_max : function() { if testing.babo_change {return 30 - testing.level * 5} else {return 45} },
	mana : function() { if testing.babo_change {return 30 - testing.level * 5} else {return 45}},
}

#endregion

#region //2차 스킬
global.Qskill[$ "spr_hat1"] = {
	timeline : function() { return yellow_2_act },
	gi_max : function() { return  65 },
	gi : function() { return  65 },
	func : undefined,
	exception : true,
	case_name : spr_hat1,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_hat2"] = {
	timeline : function() { return musa_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat2,
	mana_max : function() { return  44 },
	mana : function() { return  69 },
}
global.Qskill[$ "spr_hat3"] = {
	timeline : function() { return hunt_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat3,
	mana_max : function() { return  31 },
	mana : function() { return  31 },
}
global.Qskill[$ "spr_hat4"] = {
	timeline : function() { return EQ_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat4,
	mana_max : function() { return  110 },
	mana : function() { return  110 },
}
global.Qskill[$ "spr_hat6"] = {
	timeline : function() { return ssg_2_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat6,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat7"] = {
	timeline : function() { return big_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat7,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Qskill[$ "spr_hat8"] = {
	timeline : function() { return nu_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat8,
	mana_max : function() { return  95 },
	mana : function() { return  95 },
}
global.Qskill[$ "spr_hat9"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : random_table2,
	exception : 0,
	case_name : spr_hat9,
	mana_max : function() { return  32 },
	mana : function() { return  32 },
}
global.Qskill[$ "spr_hat10"] = {
	timeline : function() { return p_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat10,
	mana_max : function() { return  81 },
	mana : function() { return  81 },
}
global.Qskill[$ "spr_hat11"] = {
	timeline : function() { return bwiza_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat11,
	mana_max : function() { return  68 - testing.level * 6 },
	mana : function() { return  73 - testing.level * 6 },
}
global.Qskill[$ "spr_hat12"] = {
	timeline : function() { return twiza_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat12,
	mana_max : function() { return  110 },
	mana : function() { return  110 },
}
global.Qskill[$ "spr_hat13"] = {
	timeline : function() { return apple_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat13,
	mana_max : function() { return  100 },
	mana : function() { return  100 },
}
global.Qskill[$ "spr_hat14"] = {
	timeline : function() { return sward_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : arm_all_normal,
	exception : true,
	case_name : spr_hat14,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_hat43"] = {
	timeline : function() { return sward_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {
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
	},
	exception : true,
	case_name : spr_hat43,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Qskill[$ "spr_hat15"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {
		a_cooltime = 20;
		arm_type = "attack"
		server78_create_instace(healer_skill2, x, y);
	},
	exception : 0,
	case_name : spr_hat15,
	mana_max : function() { return  110 },
	mana : function() { return  130 },
}
global.Qskill[$ "spr_hat16"] = {
	timeline : function() { return shep_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat16,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Qskill[$ "spr_hat17"] = {
	timeline : function() { return die_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat17,
	mana_max : function() { return  24 },
	mana : function() { return  24 },
}
global.Qskill[$ "spr_hat18"] = {
	timeline : function() { return korea_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat18,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_hat19"] = {
	timeline : function() { return ddr_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat19,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Qskill[$ "spr_hat20"] = {
	timeline : function() { return hide_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat20,
	mana_max : function() { return  5 },
	mana : function() { return  5 },
}
global.Qskill[$ "spr_level5_hat2"] = {
	timeline : function() { return ddr_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat2,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Qskill[$ "spr_hat21"] = {
	timeline : function() { return lobo_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat21,
	mana_max : function() { return  150 },
	mana : function() { return  150 },
}
global.Qskill[$ "spr_hat22"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat22,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat23"] = {
	timeline : function() { return wing_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat23,
	mana_max : function() { return  120 },
	mana : function() { return  110 },
}
global.Qskill[$ "spr_hat24"] = {
	timeline : function() { return gili_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat24,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Qskill[$ "spr_hat25"] = {
	timeline : function() { return ik_2_act },
	gi_max : function() { return  23 },
	gi : function() { return  23 },
	func : undefined,
	exception : 0,
	case_name : spr_hat25,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat26"] = {
	timeline : function() { return mili_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat26,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat27"] = {
	timeline : function() { if (testing.level > 2) {return charge_2_but} else { return charge_2_act } },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat27,
	mana_max : function() { if (testing.level > 2) {return 115} else {return  68} },
	mana : function() { if (testing.level > 2) {return 115} else {return  68} },
}
global.Qskill[$ "spr_hat28"] = {
	timeline : function() { return cry_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat28,
	mana_max : function() { return  80 },
	mana : function() { return  80 },
}
global.Qskill[$ "spr_hat29"] = {
	timeline : function() { return ane_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat29,
	mana_max : function() { return  33 },
	mana : function() { return  33 },
}
global.Qskill[$ "spr_hat30"] = {
	timeline : function() { return fwiza_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat30,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Qskill[$ "spr_level5_hat3"] = {
	timeline : function() { return eletc_ane },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat3,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Qskill[$ "spr_level5_hat4"] = {
	timeline : function() { return tank_short },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat4,
	mana_max : function() { return  5 },
	mana : function() { return  5 },
}
global.Qskill[$ "spr_secret"] = {
	timeline : function() { return mili_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_secret,
	mana_max : function() { return  5 },
	mana : function() { return  5 },
}
global.Qskill[$ "spr_level5_hat5"] = {
	timeline : function() { return good_bye },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat5,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Qskill[$ "spr_level5_hat7"] = {
	timeline : function() { return yagol_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat7,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_level5_hat6"] = {
	timeline : function() { return mili_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat6,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Qskill[$ "spr_hat31"] = {
	timeline : function() { return mine_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat31,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Qskill[$ "spr_hat32"] = {
	timeline : function() { return twiza_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat32,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Qskill[$ "spr_hat33"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : random_xy,
	exception : 0,
	case_name : spr_hat33,
	mana_max : function() { return  70 },
	mana : function() { return  70 },
}
global.Qskill[$ "spr_hat34"] = {
	timeline : function() { return fwiza_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat34,
	mana_max : function() { return  50 - testing.level * 5 },
	mana : function() { return  50 - testing.level * 5 },
}
global.Qskill[$ "spr_hat35"] = {
	timeline : function() { return apple_1_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat35,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Qskill[$ "spr_hat36"] = {
	timeline : function() { return kpower_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat36,
	mana_max : function() { return  62 },
	mana : function() { return  68 },
}
global.Qskill[$ "spr_hat38"] = {
	timeline : function() { return fly_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat38,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Qskill[$ "spr_hat39"] = {
	timeline : function() { return leba_2_skill1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat39,
	mana_max : function() { return  80 },
	mana : function() { return  80 },
}
global.Qskill[$ "spr_hat40"] = {
	timeline : function() { return fighter_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat40,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Qskill[$ "spr_hat41"] = {
	timeline : function() { return shit_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat41,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Qskill[$ "spr_hat42"] = {
	timeline : function() { return wild_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat42,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Qskill[$ "spr_hat44"] = {
	timeline : function() { return pwiza_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat44,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Qskill[$ "spr_hat45"] = {
	timeline : function() { return fheal_2_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat45,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat46"] = {
	timeline : function() { return bandit_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat46,
	mana_max : function() { return  68 },
	mana : function() { return  68 },
}
global.Qskill[$ "spr_hat47"] = {
	timeline : function() { return gilmak_2_act },
	gi_max : function() { return  350 - testing.level * 50 },
	gi : function() { return  350 - testing.level * 50 },
	func : undefined,
	exception : 0,
	case_name : spr_hat47,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat48"] = {
	timeline : function() { return sans_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat48,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Qskill[$ "spr_hat49"] = {
	timeline : function() { return nuke_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat49,
	mana_max : function() { return  80 },
	mana : function() { return  80 },
}
global.Qskill[$ "spr_hat50"] = {
	timeline : function() { return sea_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : sea_speak,
	exception : 0,
	case_name : spr_hat50,
	mana_max : function() { return  50 },
	mana : function() { return  67 },
}
global.Qskill[$ "spr_hat51"] = {
	timeline : function() { return pota_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat51,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_hat52"] = {
	timeline : function() { return jam_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat52,
	mana_max : function() { return  52 },
	mana : function() { return  52 },
}
global.Qskill[$ "spr_ehat4"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : ehat_2_act,
	exception : 0,
	case_name : spr_ehat4,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Qskill[$ "spr_hat53"] = {
	timeline : function() { return he_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat53,
	mana_max : function() { return  45 },
	mana : function() { return  45 },
}
global.Qskill[$ "spr_level5_hat8"] = {
	timeline : function() { return die_2_act3 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat8,
	mana_max : function() { return  20 },
	mana : function() { return  20 },
}
global.Qskill[$ "spr_level5_hat9"] = {
	timeline : function() { return noone },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : sans_speak,
	exception : 0,
	case_name : spr_level5_hat9,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_level5_hat10"] = {
	timeline : function() { return musa_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat10,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_level5_hat11"] = {
	timeline : function() { return mine_2_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat11,
	mana_max : function() { return  22 },
	mana : function() { return  22 },
}
global.Qskill[$ "spr_level5_hat12"] = {
	timeline : function() { return mili_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat12,
	mana_max : function() { return  25 },
	mana : function() { return  25 },
}
global.Qskill[$ "spr_level5_hat13"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : djz_2_act,
	exception : 0,
	case_name : spr_level5_hat13,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Qskill[$ "spr_level5_hat14"] = {
	timeline : function() { return die_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat14,
	mana_max : function() { return  100 },
	mana : function() { return  100 },
}
global.Qskill[$ "spr_level5_hat15"] = {
	timeline : function() { return ane_4_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat15,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Qskill[$ "spr_hat54"] = {
	timeline : function() { return trol_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat54,
	mana_max : function() { return  23 },
	mana : function() { return  23 },
}
global.Qskill[$ "spr_hat5"] = {
	timeline : function() { return goza_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat5,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Qskill[$ "spr_hat55"] = {
	timeline : function() { return coca_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat55,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_hat56"] = {
	timeline : function() { return t_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat56,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Qskill[$ "spr_hat57"] = {
	timeline : function() { return ma_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat57,
	mana_max : function() { return  69 },
	mana : function() { return  69 },
}
global.Qskill[$ "spr_hat58"] = {
	timeline : function() { return nk_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat58,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Qskill[$ "spr_hat59"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat59,
	mana_max : function() { return  48 },
	mana : function() { return  48 },
}
global.Qskill[$ "spr_hat60"] = {
	timeline : function() { return see_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat60,
	mana_max : function() { return  80 },
	mana : function() { return  80 },
}
global.Qskill[$ "spr_hat61"] = {
	timeline : function() { return nin_2_act },
	gi_max : function() { return  58 },
	gi : function() { return  58 },
	func : undefined,
	exception : true,
	case_name : spr_hat61,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat62"] = {
	timeline : function() { return newb_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat62,
	mana_max : function() { return  11 },
	mana : function() { return  11 },
}
global.Qskill[$ "spr_hat63"] = {
	timeline : function() { return tu_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat63,
	mana_max : function() { return  41 },
	mana : function() { return  41 },
}
global.Qskill[$ "spr_hat64"] = {
	timeline : function() { return sang_change },
	gi_max : function() { return 25 },
	gi : function() { return 25 },
	func : undefined,
	exception : true,
	case_name : spr_hat64,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat65"] = {
	timeline : function() { return eng_2_act },
	gi_max : function() { return  125 },
	gi : function() { return  125 },
	func : undefined,
	exception : 0,
	case_name : spr_hat65,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_level5_hat18"] = {
	timeline : function() { return twiza_4_act11 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat18,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Qskill[$ "spr_hat66"] = {
	timeline : function() { return bb_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat66,
	mana_max : function() { return  42 },
	mana : function() { return  42 },
}
global.Qskill[$ "spr_hat67"] = {
	timeline : function() { return yo_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat67,
	mana_max : function() { return  165 },
	mana : function() { return  165 },
}
global.Qskill[$ "spr_hat68"] = {
	timeline : function() { return music_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat68,
	mana_max : function() { return  120 },
	mana : function() { return  120 },
}
global.Qskill[$ "spr_hat69"] = {
	timeline : function() { return tree_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat69,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Qskill[$ "spr_hat70"] = {
	timeline : function() { return bam_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat70,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat71"] = {
	timeline : function() { return gun_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {skill_con += 1;
						skill_con_time = 100;},
	exception : 0,
	case_name : spr_hat71,
	mana_max : function() { return  70 },
	mana : function() { return  70 },
}
global.Qskill[$ "spr_hat50849"] = {
	timeline : function() { return cry_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50849,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Qskill[$ "spr_hat73"] = {
	timeline : function() { return ass_2_act },
	gi_max : function() { return  80 },
	gi : function() { return  80 },
	func : undefined,
	exception : 0,
	case_name : spr_hat73,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat74"] = {
	timeline : function() { return ski_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat74,
	mana_max : function() { return  35 },
	mana : function() { return  35 },
}
global.Qskill[$ "spr_hat72"] = {
	timeline : function() { return snow_2_act },
	gi_max : function() { return 85 },
	gi : function() { return 85 },
	func : undefined,
	exception : true,
	case_name : spr_hat72,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat75"] = {
	timeline : function() { return sli_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat75,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat76"] = {
	timeline : function() { return hammer_2_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat76,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Qskill[$ "spr_hat77"] = {
	timeline : function() { if (testing.babo_change) {return babo_2_act1} else {return babo_2_act} },
	gi_max : function() { if (testing.babo_change) {return 30} else {return 50} },
	gi : function() { if (testing.babo_change) {return 30} else {return 50} },
	func : undefined,
	exception : 0,
	case_name : spr_hat77,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}

#endregion

#region //3차 스킬
global.Wskill[$ "spr_hat1"] = {
	timeline : function() { return yellow_3_act11 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat1,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Wskill[$ "spr_level5_hat1"] = {
	timeline : function() { return gilmak_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat1,
	mana_max : function() { return  180 },
	mana : function() { return  180 },
}
global.Wskill[$ "spr_hat2"] = {
	timeline : function() { return musa_3_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat2,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat3"] = {
	timeline : function() { return hunt_3_act },
	gi_max : function() { return  45 },
	gi : function() { return  45 },
	func : undefined,
	exception : 0,
	case_name : spr_hat3,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat4"] = {
	timeline : function() { return EQ_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat4,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat5"] = {
	timeline : function() { return goza_1_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat5,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat6"] = {
	timeline : function() { return ssg_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat6,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Wskill[$ "spr_hat7"] = {
	timeline : function() { return r_ready1 },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : function() {
		prt_val_add(Val.gi, -150)
		go_to_scale = 1 + big_val;
		big_val += 1;
		big_val_time = 160;
		server78_create_instace(n_attack_area, x, y);
		server202_sound(ready_1_sound)	
	},
	exception : 0,
	case_name : spr_hat7,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat8"] = {
	timeline : function() { return nu_3_act },
	gi_max : function() { if (testing.level == 2) {return 250} else {return 200} },
	gi : function() { if (testing.level == 2) {return 250} else {return 200} },
	func : undefined,
	exception : 0,
	case_name : spr_hat8,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat9"] = {
	timeline : function() { return noone },
	gi_max : function() { return  52 },
	gi : function() { return  52 },
	func : random_table3,
	exception : 0,
	case_name : spr_hat9,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat10"] = {
	timeline : function() { return p_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat10,
	mana_max : function() { return  46 },
	mana : function() { return  46 },
}
global.Wskill[$ "spr_hat11"] = {
	timeline : function() { return bwiza_3_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : true,
	case_name : spr_hat11,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat12"] = {
	timeline : function() { return twiza_3_act2 },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat12,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat14"] = {
	timeline : function() { return sward_3_act },
	gi_max : function() { return  67 },
	gi : function() { return  67 },
	func : undefined,
	exception : 0,
	case_name : spr_hat14,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat16"] = {
	timeline : function() { return shep_3_act },
	gi_max : function() { return  55 },
	gi : function() { return  55 },
	func : undefined,
	exception : 0,
	case_name : spr_hat16,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat17"] = {
	timeline : function() { return die_3_act },
	gi_max : function() { return  27 },
	gi : function() { return  27 },
	func : undefined,
	exception : 0,
	case_name : spr_hat17,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Wskill[$ "spr_hat19"] = {
	timeline : function() { return ddr_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat19,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat20"] = {
	timeline : function() { return hide_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat20,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat2"] = {
	timeline : function() { return yellow_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat2,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Wskill[$ "spr_hat21"] = {
	timeline : function() { return lobo_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat21,
	mana_max : function() { return  18 },
	mana : function() { return  18 },
}
global.Wskill[$ "spr_hat22"] = {
	timeline : function() { return nu_2_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat22,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat23"] = {
	timeline : function() { return wing_3_act },
	gi_max : function() { return  40 },
	gi : function() { return  40 },
	func : undefined,
	exception : 0,
	case_name : spr_hat23,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat25"] = {
	timeline : function() { return ik_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat25,
	mana_max : function() { return  27 },
	mana : function() { return  27 },
}
global.Wskill[$ "spr_hat26"] = {
	timeline : function() { return mili_3_act },
	gi_max : function() { return  225 },
	gi : function() { return  225 },
	func : undefined,
	exception : 0,
	case_name : spr_hat26,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat27"] = {
	timeline : function() { return charge_3_act },
	gi_max : function() { return  125 },
	gi : function() { return  125 },
	func : undefined,
	exception : 0,
	case_name : spr_hat27,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat29"] = {
	timeline : function() { return ane_3_act },
	gi_max : function() { return  170 },
	gi : function() { return  170 },
	func : undefined,
	exception : true,
	case_name : spr_hat29,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat30"] = {
	timeline : function() { return fwiza_3_act },
	gi_max : function() { return  45 },
	gi : function() { return  45 },
	func : undefined,
	exception : 0,
	case_name : spr_hat30,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat3"] = {
	timeline : function() { return charge_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat3,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Wskill[$ "spr_level5_hat4"] = {
	timeline : function() { return EQ_1_walk },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat4,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Wskill[$ "spr_level5_hat7"] = {
	timeline : function() { return yagol_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat7,
	mana_max : function() { return  15 },
	mana : function() { return  15 },
}
global.Wskill[$ "spr_secret"] = {
	timeline : function() { return big_terror_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_secret,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Wskill[$ "spr_level5_hat5"] = {
	timeline : function() { return elis_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat5,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Wskill[$ "spr_level5_hat6"] = {
	timeline : function() { return leba_2_skill },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat6,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Wskill[$ "spr_hat31"] = {
	timeline : function() { return mine_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : true,
	case_name : spr_hat31,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat32"] = {
	timeline : function() { return healer_1_act },
	gi_max : function() { return  40 },
	gi : function() { return  40 },
	func : undefined,
	exception : true,
	case_name : spr_hat32,
	mana_max : function() { return  60 },
	mana : function() { return  60 },
}
global.Wskill[$ "spr_hat33"] = {
	timeline : function() { return twiza_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat33,
	mana_max : function() { return  85 },
	mana : function() { return  85 },
}
global.Wskill[$ "spr_hat34"] = {
	timeline : function() { return wing_2_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat34,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat35"] = {
	timeline : function() { return EQ_3_act1 },
	gi_max : function() { return  75 },
	gi : function() { return  75 },
	func : undefined,
	exception : 0,
	case_name : spr_hat35,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat36"] = {
	timeline : function() { return kpower_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat36,
	mana_max : function() { return  29 },
	mana : function() { return  29 },
}
global.Wskill[$ "spr_hat55"] = {
	timeline : function() { return coca_3_act },
	gi_max : function() { return  75 },
	gi : function() { return  75 },
	func : undefined,
	exception : 0,
	case_name : spr_hat55,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat38"] = {
	timeline : function() { return fly_3_act },
	gi_max : function() { return  95 },
	gi : function() { return  95 },
	func : undefined,
	exception : 0,
	case_name : spr_hat38,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat39"] = {
	timeline : function() { return lebe_3_act },
	gi_max : function() { return  250 },
	gi : function() { return  250 },
	func : undefined,
	exception : 0,
	case_name : spr_hat39,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat40"] = {
	timeline : function() { return fighter_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat40,
	mana_max : function() { return  0 },
	mana : function() { return  0 },
}
global.Wskill[$ "spr_hat41"] = {
	timeline : function() { return shit_3_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat41,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat43"] = {
	timeline : function() { return spear_3_act0 },
	gi_max : function() { return  70 },
	gi : function() { return  70 },
	func : undefined,
	exception : 0,
	case_name : spr_hat43,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat42"] = {
	timeline : function() { return wild_3_act },
	gi_max : function() { return  280 },
	gi : function() { return  280 },
	func : undefined,
	exception : 0,
	case_name : spr_hat42,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat44"] = {
	timeline : function() { return pwiza_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat44,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat45"] = {
	timeline : function() { return fheal_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat45,
	mana_max : function() { return  51 },
	mana : function() { return  51 },
}
global.Wskill[$ "spr_hat46"] = {
	timeline : function() { return bandit_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat46,
	mana_max : function() { return  68 },
	mana : function() { return  68 },
}
global.Wskill[$ "spr_hat47"] = {
	timeline : function() { return gilmak_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat47,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Wskill[$ "spr_hat48"] = {
	timeline : function() { return sans_3_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat48,
	mana_max : function() { return  55 },
	mana : function() { return  55 },
}
global.Wskill[$ "spr_hat49"] = {
	timeline : function() { return nuke_3_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat49,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat50"] = {
	timeline : function() { return sea_3_act },
	gi_max : function() { return  94 },
	gi : function() { return  94 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat51"] = {
	timeline : function() { return pota_3_act },
	gi_max : function() { return  185 },
	gi : function() { return  185 },
	func : undefined,
	exception : true,
	case_name : spr_hat51,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat52"] = {
	timeline : function() { return jam_3_act },
	gi_max : function() { return  250 },
	gi : function() { return  250 },
	func : undefined,
	exception : 0,
	case_name : spr_hat52,
	mana_max : function() { return  84 },
	mana : function() { return  140 },
}
global.Wskill[$ "spr_ehat4"] = {
	timeline : function() { return pota_3_but },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : undefined,
	exception : 0,
	case_name : spr_ehat4,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat53"] = {
	timeline : function() { return he_3_act },
	gi_max : function() { return 0 },
	gi : function() { return  150 },
	func : undefined,
	exception : true,
	case_name : spr_hat53,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat8"] = {
	timeline : function() { return die_3_act1 },
	gi_max : function() { return  80 },
	gi : function() { return  80 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat8,
	mana_max : function() { return  4 },
	mana : function() { return  4 },
}
global.Wskill[$ "spr_level5_hat9"] = {
	timeline : function() { return sans_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat9,
	mana_max : function() { return  10 },
	mana : function() { return  10 },
}
global.Wskill[$ "spr_level5_hat11"] = {
	timeline : function() { return mine_2_but1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat11,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Wskill[$ "spr_level5_hat12"] = {
	timeline : function() { return sea_3_but },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat12,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat13"] = {
	timeline : function() { return ik_1_but },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat13,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat14"] = {
	timeline : function() { return musa_1_act2 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat14,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Wskill[$ "spr_level5_hat15"] = {
	timeline : function() { return sward_1_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat15,
	mana_max : function() { return  70 },
	mana : function() { return  70 },
}
global.Wskill[$ "spr_hat54"] = {
	timeline : function() { return trol_3_act },
	gi_max : function() { return  120 },
	gi : function() { return  120 },
	func : undefined,
	exception : 0,
	case_name : spr_hat54,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat17"] = {
	timeline : function() { return die_4_act1 },
	gi_max : function() { return  110 },
	gi : function() { return  110 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat17,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat72"] = {
	timeline : function() { return snow_4_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat72,
	mana_max : function() { return  19 },
	mana : function() { return  19 },
}
global.Wskill[$ "spr_hat56"] = {
	timeline : function() { return ddr_3_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat56,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat57"] = {
	timeline : function() { return ma_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat57,
	mana_max : function() { return  38 },
	mana : function() { return  38 },
}
global.Wskill[$ "spr_hat58"] = {
	timeline : function() { return nk_3_act },
	gi_max : function() { return  121 },
	gi : function() { return  121 },
	func : undefined,
	exception : 0,
	case_name : spr_hat58,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat59"] = {
	timeline : function() { return time_3_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat59,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat60"] = {
	timeline : function() { return see_3_act2 },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat60,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat61"] = {
	timeline : function() { return nin_3_act },
	gi_max : function() { return  175 },
	gi : function() { return  175 },
	func : undefined,
	exception : 0,
	case_name : spr_hat61,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat62"] = {
	timeline : function() { return newb_3_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : true,
	case_name : spr_hat62,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat63"] = {
	timeline : function() { return tu_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat63,
	mana_max : function() { return  63 },
	mana : function() { return  63 },
}
global.Wskill[$ "spr_hat64"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat64,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat65"] = {
	timeline : function() { return eng_3_act },
	gi_max : function() { return  175 },
	gi : function() { return  175 },
	func : undefined,
	exception : 0,
	case_name : spr_hat65,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_level5_hat18"] = {
	timeline : function() { return healer_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat18,
	mana_max : function() { return  105 },
	mana : function() { return  135 },
}
global.Wskill[$ "spr_hat66"] = {
	timeline : function() { return bb_3_act },
	gi_max : function() { return  61 },
	gi : function() { return  61 },
	func : undefined,
	exception : true,
	case_name : spr_hat66,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat67"] = {
	timeline : function() { return yo_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : true,
	case_name : spr_hat67,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat68"] = {
	timeline : function() { return music_3_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat68,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat69"] = {
	timeline : function() { return tree_3_act2 },
	gi_max : function() { return  175 },
	gi : function() { return  175 },
	func : undefined,
	exception : true,
	case_name : spr_hat69,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat70"] = {
	timeline : function() { return bam_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat70,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat71"] = {
	timeline : function() { return gun_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : function() {skill_con += 1;
						skill_con_time = 100;},
	exception : 0,
	case_name : spr_hat71,
	mana_max : function() { return  64 - testing.skill_con * 5 },
	mana : function() { return  64 - testing.skill_con * 5 },
}
global.Wskill[$ "spr_hat50849"] = {
	timeline : function() { return mili_2_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50849,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Wskill[$ "spr_hat73"] = {
	timeline : function() { return ass_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat73,
	mana_max : function() { return  77 },
	mana : function() { return  77 },
}
global.Wskill[$ "spr_hat74"] = {
	timeline : function() { return ski_3_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : true,
	case_name : spr_hat74,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat"] = {
	timeline : function() { return talmo_3_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat,
	mana_max : function() { return  125 },
	mana : function() { return  125 },
}
global.Wskill[$ "spr_hat76"] = {
	timeline : function() { return hammer_3_act },
	gi_max : function() { return 100 },
	gi : function() { return 100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat76,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Wskill[$ "spr_hat75"] = {
	timeline : function() { return skill_index },
	gi_max : function() { return  125 },
	gi : function() { return  125 },
	func : undefined,
	exception : true,
	case_name : spr_hat75,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
#endregion

#region //4차스킬
global.Eskill[$ "spr_hat1"] = {
	timeline : function() { return yellow_4_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat1,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat48"] = {
	timeline : function() { return noone },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : sans_speak,
	exception : 0,
	case_name : spr_hat48,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat3"] = {
	timeline : function() { return hunt_4_act1 },
	gi_max : function() { return  270 },
	gi : function() { return  270 },
	func : undefined,
	exception : 0,
	case_name : spr_hat3,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat4"] = {
	timeline : function() { return EQ_4_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat4,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat8"] = {
	timeline : function() { return nu_4_act },
	gi_max : function() { return  440 },
	gi : function() { return  440 },
	func : undefined,
	exception : 0,
	case_name : spr_hat8,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat9"] = {
	timeline : function() { return noone },
	gi_max : function() { return  92 },
	gi : function() { return  92 },
	func : random_table4,
	exception : 0,
	case_name : spr_hat9,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat10"] = {
	timeline : function() { return p_4_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat10,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat11"] = {
	timeline : function() { return bwiza_4_act },
	gi_max : function() { return  51 },
	gi : function() { return  51 },
	func : undefined,
	exception : 0,
	case_name : spr_hat11,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat12"] = {
	timeline : function() { return twiza_4_act1 },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat12,
	mana_max : function() { return  55 },
	mana : function() { return  55 },
}
global.Eskill[$ "spr_hat13"] = {
	timeline : function() { return apple_4_act },
	gi_max : function() { return  270 },
	gi : function() { return  270 },
	func : undefined,
	exception : 0,
	case_name : spr_hat13,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat14"] = {
	timeline : function() { return sward_4_act },
	gi_max : function() { return  265 },
	gi : function() { return  265 },
	func : undefined,
	exception : 0,
	case_name : spr_hat14,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat15"] = {
	timeline : function() { return healer_4_act },
	gi_max : function() { return  290 },
	gi : function() { return  290 },
	func : undefined,
	exception : 0,
	case_name : spr_hat15,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat16"] = {
	timeline : function() { return shep_4_act },
	gi_max : function() { return  7 },
	gi : function() { return  7 },
	func : undefined,
	exception : 0,
	case_name : spr_hat16,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat17"] = {
	timeline : function() { return die_4_act },
	gi_max : function() { return  70 },
	gi : function() { return  70 },
	func : undefined,
	exception : 0,
	case_name : spr_hat17,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat20"] = {
	timeline : function() { return hide_4_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat20,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat21"] = {
	timeline : function() { return lobo_4_act },
	gi_max : function() { return  175 },
	gi : function() { return  175 },
	func : undefined,
	exception : 0,
	case_name : spr_hat21,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat22"] = {
	timeline : function() { return aring_4_act },
	gi_max : function() { return  175 },
	gi : function() { return  175 },
	func : undefined,
	exception : 0,
	case_name : spr_hat22,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat23"] = {
	timeline : function() { return wing_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat23,
	mana_max : function() { return  90 },
	mana : function() { return  90 },
}
global.Eskill[$ "spr_hat24"] = {
	timeline : function() { return gili_4_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat24,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat25"] = {
	timeline : function() { return ik_4_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat25,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat26"] = {
	timeline : function() { return mili_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat26,
	mana_max : function() { return  99 },
	mana : function() { return  99 },
}
global.Eskill[$ "spr_hat27"] = {
	timeline : function() { return charge_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat27,
	mana_max : function() { return  55 },
	mana : function() { return  55 },
}
global.Eskill[$ "spr_hat28"] = {
	timeline : function() { return cry_4_act },
	gi_max : function() { return  25 },
	gi : function() { return  25 },
	func : undefined,
	exception : 0,
	case_name : spr_hat28,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat29"] = {
	timeline : function() { return ane_4_act },
	gi_max : function() { return  60 },
	gi : function() { return  60 },
	func : undefined,
	exception : 0,
	case_name : spr_hat29,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat30"] = {
	timeline : function() { return fwiza_4_act },
	gi_max : function() { return  298 },
	gi : function() { return  298 },
	func : undefined,
	exception : 0,
	case_name : spr_hat30,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat3"] = {
	timeline : function() { return wing_sward },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat3,
	mana_max : function() { return  115 },
	mana : function() { return  130 },
}
global.Eskill[$ "spr_level5_hat4"] = {
	timeline : function() { return sward_3_angry },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat4,
	mana_max : function() { return  110 },
	mana : function() { return  80 },
}
global.Eskill[$ "spr_secret"] = {
	timeline : function() { return bwiza_4_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_secret,
	mana_max : function() { return  10 },
	mana : function() { return  8 },
}
global.Eskill[$ "spr_level5_hat5"] = {
	timeline : function() { return i_book_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat5,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat6"] = {
	timeline : function() { return hunt_3_act_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat6,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Eskill[$ "spr_hat31"] = {
	timeline : function() { return mine_4_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat31,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat33"] = {
	timeline : function() { return law_4_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat33,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat34"] = {
	timeline : function() { return nu_2_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat34,
	mana_max : function() { return  90 },
	mana : function() { return  90 },
}
global.Eskill[$ "spr_hat35"] = {
	timeline : function() { return charge_2_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat35,
	mana_max : function() { return  115 },
	mana : function() { return  115 },
}
global.Eskill[$ "spr_hat36"] = {
	timeline : function() { return kpower_4_act },
	gi_max : function() { return  220 },
	gi : function() { return  220 },
	func : undefined,
	exception : 0,
	case_name : spr_hat36,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat38"] = {
	timeline : function() { return fly_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat38,
	mana_max : function() { return  30 },
	mana : function() { return  30 },
}
global.Eskill[$ "spr_level5_hat7"] = {
	timeline : function() { return yagol_4_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat7,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat40"] = {
	timeline : function() { return fighter_4_act_old },
	gi_max : function() { return  330 },
	gi : function() { return  330 },
	func : undefined,
	exception : 0,
	case_name : spr_hat40,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat41"] = {
	timeline : function() { return shit_4_act },
	gi_max : function() { return 50 },
	gi : function() { return  50 },
	func : undefined,
	exception : true,
	case_name : spr_hat41,
	mana_max : function() { return  100 },
	mana : function() { return  100 },
}
global.Eskill[$ "spr_hat18"] = {
	timeline : function() { return korea_4_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat18,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat37"] = {
	timeline : function() { return kesin_4_act },
	gi_max : function() { return  400 },
	gi : function() { return  400 },
	func : undefined,
	exception : 0,
	case_name : spr_hat37,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat42"] = {
	timeline : function() { return wild_4_act },
	gi_max : function() { return  0 },
	gi : function() { return  0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat42,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat43"] = {
	timeline : function() { return spear_4_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat43,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat44"] = {
	timeline : function() { return pwiza_4_act },
	gi_max : function() { return  40 },
	gi : function() { return  40 },
	func : undefined,
	exception : 0,
	case_name : spr_hat44,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat45"] = {
	timeline : function() { return fheal_4_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : true,
	case_name : spr_hat45,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat46"] = {
	timeline : function() { return bandit_4_act },
	gi_max : function() { return  180 },
	gi : function() { return  180 },
	func : undefined,
	exception : 0,
	case_name : spr_hat46,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat47"] = {
	timeline : function() { return gilmak_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat47,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat49"] = {
	timeline : function() { return nuke_4_act },
	gi_max : function() { return  250 },
	gi : function() { return  250 },
	func : undefined,
	exception : 0,
	case_name : spr_hat49,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat50"] = {
	timeline : function() { return sea_4_act },
	gi_max : function() { return  260 },
	gi : function() { return  260 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat51"] = {
	timeline : function() { return pota_4_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat51,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat52"] = {
	timeline : function() { return jam_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat52,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Eskill[$ "spr_hat39"] = {
	timeline : function() { return lebe_4_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat39,
	mana_max : function() { return  150 },
	mana : function() { return  200 },
}
global.Eskill[$ "spr_ehat4"] = {
	timeline : function() { return aring_4_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_ehat4,
	mana_max : function() { return  66 },
	mana : function() { return  50 },
}
global.Eskill[$ "spr_hat53"] = {
	timeline : function() { return he_4_act },
	gi_max : function() { return  40 },
	gi : function() { return  40 },
	func : undefined,
	exception : 0,
	case_name : spr_hat53,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat9"] = {
	timeline : function() { return sans_4_act },
	gi_max : function() { return  125 },
	gi : function() { return  105 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat9,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat10"] = {
	timeline : function() { return musa_3_act11 },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat10,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Eskill[$ "spr_level5_hat11"] = {
	timeline : function() { return alpha_4_act },
	gi_max : function() { return  484 },
	gi : function() { return  484 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat11,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat12"] = {
	timeline : function() { return nuke_3_but },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat12,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat13"] = {
	timeline : function() { return djz_4_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat13,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat14"] = {
	timeline : function() { return ik_4_act1 },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat14,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat15"] = {
	timeline : function() { return EQ_1_act1 },
	gi_max : function() { return  75 },
	gi : function() { return  75 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat15,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat54"] = {
	timeline : function() { return trol_4_act },
	gi_max : function() { return  80 },
	gi : function() { return  80 },
	func : undefined,
	exception : 0,
	case_name : spr_hat54,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat17"] = {
	timeline : function() { return ane_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat17,
	mana_max : function() { return  40 },
	mana : function() { return  40 },
}
global.Eskill[$ "spr_hat55"] = {
	timeline : function() { return coca_4_act },
	gi_max : function() { return  60 },
	gi : function() { return  60 },
	func : undefined,
	exception : 0,
	case_name : spr_hat55,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat56"] = {
	timeline : function() { return t_killer44 },
	gi_max : function() { return return 550 },
	gi : function() { return  550 },
	func : undefined,
	exception : true,
	case_name : spr_hat56,
	mana_max : function() { return  190 },
	mana : function() { return  350 },
}
global.Eskill[$ "spr_hat57"] = {
	timeline : function() { return ma_2_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat57,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat58"] = {
	timeline : function() { return nk_4_act },
	gi_max : function() { return  220 },
	gi : function() { return  220 },
	func : undefined,
	exception : 0,
	case_name : spr_hat58,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat59"] = {
	timeline : function() { return time_4_act },
	gi_max : function() { return  220 },
	gi : function() { return  220 },
	func : undefined,
	exception : true,
	case_name : spr_hat59,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat60"] = {
	timeline : function() { return see_4_act3 },
	gi_max : function() { return  400 },
	gi : function() { return  400 },
	func : undefined,
	exception : 0,
	case_name : spr_hat60,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat61"] = {
	timeline : function() { return nin_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat61,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat62"] = {
	timeline : function() { return newb_4_act },
	gi_max : function() { return  150 },
	gi : function() { return  150 },
	func : undefined,
	exception : 0,
	case_name : spr_hat62,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat63"] = {
	timeline : function() { return tu_4_act },
	gi_max : function() { return  350 },
	gi : function() { return  350 },
	func : undefined,
	exception : 0,
	case_name : spr_hat63,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat65"] = {
	timeline : function() { return eng_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat65,
	mana_max : function() { return  50 },
	mana : function() { return  50 },
}
global.Eskill[$ "spr_hat2"] = {
	timeline : function() { return musa_4_act },
	gi_max : function() { return  85 },
	gi : function() { return  85 },
	func : undefined,
	exception : 0,
	case_name : spr_hat2,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_level5_hat18"] = {
	timeline : function() { return sward_1_act3 },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat18,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat66"] = {
	timeline : function() { return bb_4_act },
	gi_max : function() { return  280 },
	gi : function() { return  280 },
	func : undefined,
	exception : 0,
	case_name : spr_hat66,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat67"] = {
	timeline : function() { return yo_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat67,
	mana_max : function() { return  54 },
	mana : function() { return  54 },
}
global.Eskill[$ "spr_hat68"] = {
	timeline : function() { return music_4_act },
	gi_max : function() { return  80 },
	gi : function() { return  80 },
	func : undefined,
	exception : 0,
	case_name : spr_hat68,
	mana_max : function() { return  100 },
	mana : function() { return  100 },
}
global.Eskill[$ "spr_hat"] = {
	timeline : function() { return tree_4_act1 },
	gi_max : function() { return  75 },
	gi : function() { return  75 },
	func : undefined,
	exception : 0,
	case_name : spr_hat,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat69"] = {
	timeline : function() { return tree_4_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : 0,
	case_name : spr_hat69,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat71"] = {
	timeline : function() { return gun_4_act },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_hat71,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat73"] = {
	timeline : function() { return ass_4_act },
	gi_max : function() { return  136 },
	gi : function() { return  136 },
	func : undefined,
	exception : 0,
	case_name : spr_hat73,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat74"] = {
	timeline : function() { return i_blue_heal },
	gi_max : function() { return  125 },
	gi : function() { return  125 },
	func : undefined,
	exception : 0,
	case_name : spr_hat74,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat75"] = {
	timeline : function() { return sli_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : true,
	case_name : spr_hat75,
	mana_max : function() { return  77 },
	mana : function() { return  77 },
}
global.Eskill[$ "spr_hat50849"] = {
	timeline : function() { return ane_1_but },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat50849,
	mana_max : function() { return  45 },
	mana : function() { return  45 },
}
global.Eskill[$ "spr_hat72"] = {
	timeline : function() { return snow_3_act },
	gi_max : function() { return  124 },
	gi : function() { return  124 },
	func : undefined,
	exception : true,
	case_name : spr_hat72,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Eskill[$ "spr_hat76"] = {
	timeline : function() { return hammer_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat76,
	mana_max : function() { return 100 },
	mana : function() { return 100 },
}
global.Eskill[$ "spr_hat77"] = {
	timeline : function() { if testing.babo_change {return babo_4_act_another} else {return babo_1_act} },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_hat77,
	mana_max : function() { if testing.babo_change {return 75} else {return 25} },
	mana : function() { if testing.babo_change {return 75} else {return 25}},
}
#endregion

#region //5차스킬
global.Rskill[$ "spr_hat1"] = {
	timeline : function() { return noone },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : random_table5,
	exception : 0,
	case_name : spr_hat1,
	mana_max : function() { return  9 },
	mana : function() { return  9 },
}
global.Rskill[$ "spr_level5_hat2"] = {
	timeline : function() { return hunt_4_act1 },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat2,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat1"] = {
	timeline : function() { return bili_5_act },
	gi_max : function() { return  600 },
	gi : function() { return  600 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat1,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat8"] = {
	timeline : function() { return pota_3_what },
	gi_max : function() { return  450 },
	gi : function() { return  450 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat8,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat3"] = {
	timeline : function() { return big_terror },
	gi_max : function() { return  200 },
	gi : function() { return  200 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat3,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat4"] = {
	timeline : function() { return ik_4_nuke },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat4,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat5"] = {
	timeline : function() { return change_go },
	gi_max : function() { return  20 },
	gi : function() { return  20 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat5,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat6"] = {
	timeline : function() { return shep_3_but },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat6,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_hat5"] = {
	timeline : function() { return goza_5_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : 0,
	case_name : spr_hat5,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat7"] = {
	timeline : function() { return yagol_5_act },
	gi_max : function() { return  50 },
	gi : function() { return  50 },
	func : undefined,
	exception : 0,
	case_name : spr_level5_hat7,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_secret"] = {
	timeline : function() { return nu_4_act },
	gi_max : function() { return 0 },
	gi : function() { return 0 },
	func : undefined,
	exception : 0,
	case_name : spr_secret,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_ehat4"] = {
	timeline : function() { return ehat_5_act },
	gi_max : function() { return  100 },
	gi : function() { return  100 },
	func : undefined,
	exception : true,
	case_name : spr_ehat4,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat10"] = {
	timeline : function() { return musa_5_act },
	gi_max : function() { return  40 },
	gi : function() { return  40 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat10,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat11"] = {
	timeline : function() { return mine_2_but11 },
	gi_max : function() { return  25 },
	gi : function() { return  25 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat11,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat15"] = {
	timeline : function() { return EQ_1_act2 },
	gi_max : function() { return  75 },
	gi : function() { return  75 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat15,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat17"] = {
	timeline : function() { return oda_5_act },
	gi_max : function() { return  75 },
	gi : function() { return  75 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat17,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}
global.Rskill[$ "spr_level5_hat18"] = {
	timeline : function() { return mol_5_act },
	gi_max : function() { return  300 },
	gi : function() { return  300 },
	func : undefined,
	exception : true,
	case_name : spr_level5_hat18,
	mana_max : function() { return 0 },
	mana : function() { return 0 },
}

#endregion
for (var i = 0; i < global.achievement_num; i++) {
	global.achievement[i] = {
		ach_id : i,
		spr : spr_achievement,
		spr_index : i,
		name : "default",
		desc : "default",
		comple : -1,
	}
	var str = global.achievement[i];
	switch(i) {
		case 0 :
			str.name = "첫 죽음";
			str.desc = "모든것의 시작";
		break;
		case 1:
			str.name = "홈런";
			str.desc = "트롤모의 평타를 날려버리기";
		break;
		case 2:
			str.name = "네번째 죽음";
			str.desc = "4차에서 죽기";
		break;
		case 3:
			str.name = "종착역";
			str.desc = "탈모가 되기";
		break;
		case 4:
			str.name = "박멸";
			str.desc = "의사로 벌레모 처치";
		break;
		case 5:
			str.name = "부활";
			str.desc = "죽었다가 살아나기";
		break;
		case 6:
			str.name = "자랑스러운 우리나라";
			str.desc = "태극모로 무사 처치";
		break;
		case 7:
			str.name = "얼음땡";
			str.desc = "얼음 디버프가 있는 상태에서 죽기";
		break;
		case 8:
			str.name = "가벼운 주머니";
			str.desc = "아이템이 없는 상태에서 1킬";
		break;
		case 9:
			str.name = "성형중독";
			str.desc = "얼굴성형10번 하기";
		break;
	}
}
global.surgery_num = 0;
global.random_hat = false;
global.window_width = 1024; 
global.window_height = 768;
global.ban_say = ds_list_create();
global.hat_num = 0
global.my_cid = 0;
global.intuto = false;
global.my_cid_id = 0;
global.show_skin = true;
global.back_index = 0;
global.only_see = false;
global.client = -1;
global.skin = 0;
global.name = "무명용사" + string(ran);
global.hat = spr_hat1;
global.stats = spr_stats1
global.arm = spr_arm1;
global.speeed = 40;
global.foot = spr_foot1;
global.face = spr_face1;
global.stats = spr_stats1;
global.online = 0;
global.pickaxe_index = spr_pickaxe9
global.pickaxe_num = array_create(10, 0);
global.pickaxe_exist = array_create(10, false);
global.pickaxe_exist[0] = true;
global.starcoin = 0;
global.item = array_create(MAX_ITME_BOX, spr_none);
global.item_time = array_create(MAX_ITME_BOX, 0);
global.item_time_max = array_create(MAX_ITME_BOX, 1);
global.item_cnacle = array_create(MAX_ITME_BOX, false);
global.BGM = true;
global.item_show = 0;
global.show_hitbox = true;
global.hat_limit = 77;

global.left = vk_left;
global.right = vk_right;
global.up = vk_up;
global.down = vk_down;
global.shift = vk_shift;
global.cap = 20;
global.keya = ord("A");
global.keyf = ord("F");
global.keys = ord("S");
global.keyd = ord("D");
global.keyq = ord("Q");
global.keyw = ord("W");
global.keye = ord("E");
global.keyr = ord("R");
global.keyg = ord("G");
global.key4 = ord("4");
global.key5 = ord("5");
global.key6 = ord("6");
global.key7 = ord("7");
global.ctrl = vk_control;
var file = ini_open("key_config.ini");
if (file != -1) {
	var num = array_length(global.keyboard_array);
	var _key;
	for (var i = 0; i < num; i++){
		_key = global.keyboard_array[i];
		variable_global_set(_key, ini_read_real("key_config", _key, variable_global_get(_key)));
	}
	ini_close();
}
global.hat_array = [spr_hat, spr_hat1, spr_hat14, spr_hat15, spr_hat27, spr_hat12, spr_hat10, spr_hat19, 
spr_hat7, spr_hat29, spr_hat3, spr_hat8, spr_hat16, spr_hat6, spr_hat4, spr_hat13, spr_hat23,
spr_hat24, spr_hat26, spr_hat2, spr_hat11, spr_hat17, spr_hat20, spr_hat28, spr_hat18, spr_hat9
, spr_hat5, spr_hat25, spr_hat31, spr_hat39, spr_hat30, spr_hat21, spr_hat32, spr_hat22, spr_hat33
, spr_hat36, spr_hat37, spr_hat38, spr_hat34, spr_hat40, spr_hat35, spr_hat41, spr_hat42, spr_hat43
, spr_hat44, spr_hat45, spr_hat46, spr_hat47, spr_hat48, spr_hat49, spr_hat50, spr_hat51, spr_hat52
, spr_hat53, spr_hat54, spr_hat55, spr_hat56, spr_hat57, spr_hat58, spr_hat59, spr_hat60, spr_hat61, spr_hat62
, spr_hat63, spr_hat64, spr_hat65, spr_hat66, spr_hat67, spr_hat68, spr_hat69, spr_hat70, spr_hat71 
, spr_hat72, spr_hat73, spr_hat74, spr_hat75, spr_hat76, spr_hat77
, spr_level5_hat1,spr_level5_hat2, spr_level5_hat3, spr_level5_hat4, spr_level5_hat5, spr_level5_hat6
, spr_level5_hat7, spr_level5_hat8, spr_level5_hat9, spr_level5_hat10, spr_level5_hat11, spr_level5_hat12
, spr_level5_hat13, spr_level5_hat14, spr_level5_hat15, spr_level5_hat17, spr_level5_hat18
, spr_ehat4, spr_secret, spr_hat50849];
global.prt_list = ds_list_create();//변수 리스트
global.prt_de_list = ds_list_create();//복호화 키 리스트
global.prt_key = irandom_range(1,10000);//암호화 키
global.ip = "124.50.53.124";
global.ban_list = array_create(100, false);
global.cid_array = array_create(25, 0);
global.cid_array = [testing0, testing1,testing2,testing3,testing4,testing5,testing6,testing7,
testing8,testing9,testing10, testing11,testing12,testing13,testing14,testing15,testing16,testing17,
testing18,testing19, testing20, testing21, testing22, testing23, testing24]
enum Val2
{
    mon=0
}
prt_add(global.money);
global.num_font = font_add_sprite_ext(spr_num, "0123456789.-+|X", false, 0);
scr_hat_change2(spr_hat1);

var path = "setting.txt";
var val;
if (file_exists(path)) {
	var file = file_text_open_read(path);
	if (file == -1) {
		//show_debug_message("불가능.");
		exit;
	}
	val = file_text_read_real(file);
	audio_group_set_gain(audiogroup_default, val, 100);
	file_text_readln(file);
	val = file_text_read_real(file);
	audio_group_set_gain(audio_bgm, val, 100);
	file_text_readln(file);
	
	global.window_height = file_text_read_real(file);
	file_text_readln(file);
	global.window_width = file_text_read_real(file);
	file_text_readln(file);
	global.show_hitbox = file_text_read_real(file);
	file_text_readln(file);
	global.show_skin = file_text_read_real(file);
	file_text_readln(file);
	global.wild_circle = file_text_read_real(file);
	file_text_readln(file);
	global.window_width = max(global.window_width, 1024);
	global.window_height = max(global.window_height, 768);
	window_set_size(global.window_width, global.window_height + 18);
	surface_resize(application_surface, global.window_width, global.window_height + 18);
}
else {
	window_set_size(1024, 768 + 18);
	surface_resize(application_surface, 1024, 768 + 18);
}