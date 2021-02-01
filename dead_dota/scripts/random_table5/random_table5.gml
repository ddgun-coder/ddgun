function random_table5() {
	var what = irandom(50);
	switch(what) {
		case 0:
			normal_play(eletc_ane);
		break;
		case 1:
			normal_play(wing_sward);
		break;
		case 2:
			normal_play(big_terror);
		break;
		case 3:
			normal_play(tank_short);
		break;
		case 4:
			normal_play(EQ_1_walk);
		break;
		case 5:
			normal_play(sward_3_angry);
		break;
		case 6:
			normal_play(ik_4_nuke);
		break;
		case 7:
			normal_play(good_bye);
		break;
		case 8:
			normal_play(normal_attack_but);
		break;
		case 9:
			normal_play(ane_1_but);
		break;
		case 10:
			normal_play(i_book_but);
		break;
		case 11:
			normal_play(change_go);
		break;
		case 12:
			normal_play(yagol_3_act);
		break;
		case 13:
			normal_play(hunt_2_but);
		break;
		case 14:
			normal_play(leba_2_skill);
		break;
		case 15:
			normal_play(shep_3_but);
		break;
		case 16:
			normal_play(elis_3_act);
		break;
		case 17:
			normal_play(yagol_2_act);
		break;
		case 18:
			normal_play(yagol_4_act);
		break;
		case 19:
			normal_play(goza_5_act);
		break;
		case 20:
			normal_play(charge_4_act);
		break;
		case 21:
			normal_play(sward_2_act);
		break;
		case 22:
			normal_play(mili_1_act);
		break;
		case 23:
			normal_play(yellow_2_act);
		break;
		case 24:
			normal_play(ddr_2_act);
		break;
		case 25:
			normal_play(hunt_4_act);
		break;
		case 26:
			normal_play(hunt_3_act);
		break;
		case 27:
			normal_play(ik_2_act);
		break;
		case 28:
			normal_play(shep_1_act);
		break;
		case 29:
			normal_play(bili_5_act);
		break;
		case 30:
			normal_play(yagol_5_act);
		break;
		case 31:
			normal_play(sans_1_but);
		break;
		case 32:
			normal_play(djz_4_act);
		break;
		case 33:
			normal_play(ik_1_but);
		break;
		case 34:
			normal_play(musa_5_act);
		break;
		case 35:
			normal_play(alpha_1_act);
		break;
		case 36:
			normal_play(hunt_1_but);
		break;
		case 37:
			normal_play(mine_2_but1);
		break;
		case 38:
			normal_play(mine_2_but11);
		break;
		case 39:
			normal_play(sans_3_act);
		break;
		case 40:
			normal_play(sans_4_act);
		break;
		case 41:
			normal_play(mine_2_but);
		break;
		case 42:
			normal_play(nuke_3_but);
		break;
		case 43:
			normal_play(pota_3_what);
		break;
		case 44:
			normal_play(musa_1_act1);
		break;
		case 45:
			normal_play(musa_3_act11);
		break;
		case 46:
			normal_play(gilmak_4_act1);
		break;
		case 47:
			normal_play(sea_1_act1);
		break;
		case 48:
			normal_play(fly_2_but);
		break;
		case 49:
			normal_play(die_4_act2);
		break;
		case 50:
			normal_play(mili_1_act1);
		break;
	}
}
function random_tableno() {
	switch(irandom(7)) {
		case 0:
			normal_play(gman_3_act1);
		break;
		case 1:
			normal_play(gman_3_act2);
		break;
		case 2:
			normal_play(gman_3_act3);
		break;
		case 3:
			normal_play(gman_3_act4);
		break;
		case 4:
			normal_play(gman_3_act5);
		break;
		case 5:
			normal_play(gman_3_act6);
		break;
		case 6:
			normal_play(gman_3_act7);
		break;
		case 7:
			normal_play(gman_3_act8);
		break;
	}
}
function random_die_shangus() {
	var d_string = "";
	switch(irandom(3)) {
		case 0:
			server78_create_instace(obj_destiny, x, y);
			d_string = "너무 슬퍼하지 마라.";
		break;
		case 1:
			server78_create_instace(obj_destiny2, x, y);
			d_string = "누구도 원망하지 마라. 운명이다.";
		break;
		case 2:
			server78_create_instace(obj_destiny3, x, y);
			d_string = "책을 읽을 수도 글을 쓸 수도 없다.";
		break;
		case 3:
			server78_create_instace(obj_destiny4, x, y);
			d_string = "미안해하지 마라.";
		break;
	}
		
	buffer_seek(buff_chat, buffer_seek_start, 0);
				
	buffer_write(buff_chat,buffer_u8,1)//1은 이제 채팅
	buffer_write(buff_chat,buffer_string, d_string);
	buffer_write(buff_chat,buffer_string,global.name);
		
	network_send_packet(global.intuto,buff_chat,buffer_tell(buff_chat));
}