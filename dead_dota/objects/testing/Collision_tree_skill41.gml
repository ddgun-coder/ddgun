/// @description Insert description here
// You can write your code in this editor
var D = 10;
if (global.hat == spr_hat18 and level > 2) {
	D = D / 2;
}
if (buff_index != spr_wing1) {
	if (creper = false) {
		if (live = 1) {
			if (global.team != other.team or (other.team == 2 and other.cid == global.my_cid)) {
				if (sturn <= 0 and immune == false) {
					if (shild == true and shild_time < 1) {
						view_visible[1] = false;
						view_visible[0] = true;
						view_where = 0;
						obj_telescope_view.tele = false;
						immune = true;
						shild_time = 30;
						aexp += D;
						if (hp > 0) {
							hp += D;
						}
						server202_sound(sward_2_shilding);
					}
					else {
						if (counter < 0) {
							sturn = 200;
							hat_bye = true;
							hp -= D;
							server77_equal(serve_val.hat_bye, hat_bye, buffer_bool);
							hat_bye_time = 1200;
							buffer_seek(testing.buff_chat, buffer_seek_start, 0);
	
							buffer_write(testing.buff_chat,buffer_u8,100);//100은 피해량,스턴값
							buffer_write(testing.buff_chat,buffer_u8, 0);
							buffer_write(testing.buff_chat,buffer_u8, D);
							buffer_write(testing.buff_chat,buffer_u16,200);
	
							network_send_packet(0,testing.buff_chat,5);
						}
					}
				}
			}
		}
	}
	else {
		server78_create_instace(mine_skill3, x, y);
		sturn = 240;
		creper = false;
		creper_die = 240;
		footL_x = x + irandom_range(-50, 50);
		footR_x = x + irandom_range(-50, 50);
		footL_y = y + irandom_range(-50, 50);
		footR_y = y + irandom_range(-50, 50);
		armL_x = x + irandom_range(-50, 50);
		armR_x = x + irandom_range(-50, 50);
		armL_y = y + irandom_range(-50, 50);
		armR_y = y + irandom_range(-50, 50);
		right_arm_YA = irandom(360);
		left_arm_YA = irandom(360);
		right_foot_YA = irandom(360);
		left_foot_YA = irandom(360);
		hat_xscale = 0;
		hat_yscale = 0;
		server77_equal(serve_val.hat_yscale, hat_yscale, buffer_s8);
		server77_equal(serve_val.hat_xscale, hat_xscale, buffer_s8);
		level = 0;
		server77_equal(serve_val.hat_frame, level, buffer_u8);
		buffer_seek(buff_fast, buffer_seek_start, 0);
	
		buffer_write(buff_fast,buffer_u8,95);//95는 고자동기화
		buffer_write(buff_fast,buffer_u8, global.hat_show);
		buffer_write(buff_fast,buffer_u8, level);
	
		network_send_packet(0,buff_fast,3);
	}
}