/// @description Insert description here
// You can write your code in this editor
switch(other.image_index % 3) {
	case 0:
		if (global.team =1 or invisible == true or global.hat == spr_level5_hat1) {
			if (hp < m_hp) {
				hp += 0.09;
			}
		}
		else{
			if (hp >= 0) {
				if(invisible = false and buff_index != spr_wing1) {
					if! (global.hat == spr_hat37 and level > 1) {
						other_cid = 0;
						hp -= 0.12;
						if (spr_arml_more == sprite490) {
							dominate_time++;
							skill_say_time = 20;
							skill_say = "점령중... (" + string(5 - (dominate_time / 40))+"초 남음)";
							if (dominate_time == 200) {
								if (place_meeting(x, y, flag_here)) {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 300;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 3);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 150);
									prt_val_add(0, 1000);
									normal_play(ddr_1_act);
								}
								else {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 100;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 1);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 100);
									prt_val_add(0, 750);
									normal_play(ddr_1_act);
								}
								server78_create_instace(obj_falg, x, y);
							}
						}
						else {
							dominate_time = 0;	
						}
					}
				}
			}
		}
	break;
	case 1:
		if (global.team = 0 or invisible == true or global.hat == spr_level5_hat1) {
			if (hp < m_hp) {
				hp += 0.09;
			}
		}
		else{
			if (hp >= 0) {
				if(invisible = false and buff_index != spr_wing1) {
					if! (global.hat == spr_hat37 and level > 1) {
						other_cid = 0;
						hp -= 0.12;
						if (spr_arml_more == sprite490) {
							dominate_time++;
							skill_say_time = 20;
							skill_say = "점령중... (" + string(5 - (dominate_time / 40))+"초 남음)";
							if (dominate_time == 200) {
								if (place_meeting(x, y, flag_here)) {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 300;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 3);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 150);
									prt_val_add(0, 1000);
									normal_play(ddr_1_act);
								}
								else {
									skill_say_time = 20;
									skill_say = "점령됨!";
									aexp += 100;
									a_possible = true;
									buffer_seek(buff_fast, buffer_seek_start, 0);
	
									buffer_write(buff_fast, buffer_u8, 99);
									buffer_write(buff_fast, buffer_bool, global.team);//팀점수 업
									buffer_write(buff_fast, buffer_u8, 0);
									buffer_write(buff_fast, buffer_u8, 1);
	
									network_send_packet(0,buff_fast,buffer_tell(buff_fast));
									prt_val_add(Val.mp, 100);
									prt_val_add(0, 750);
									normal_play(ddr_1_act);
								}
								server78_create_instace(obj_falg, x, y);
							}
						}
						else {
							dominate_time = 0;	
						}
					}
				}
			}
		}
	break;
	case 2:
		if (buff_index != spr_wing1) {
			hp -= 0.3;
			other_cid = 0;
		}
	break;
}