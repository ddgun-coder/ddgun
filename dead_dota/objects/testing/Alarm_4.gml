if (global.hat != spr_hat5)
{
	server202_sound(dead_sound);

	buffer_seek(buff_fast, buffer_seek_start, 0);
		
	buffer_write(buff_fast, buffer_u8, 44);//사후관리
	
	network_send_packet(0,buff_fast, 1);
	

	if(level == 4) {
		scr_hat_change2(spr_hat1);
	}
}
else
{
	var need;
	if(level == 4) {
		need = 70;
	}
	else {
		need =(185 - level * 10);
	}
	if (mana >= need)
	{
		prt_val_add(Val.mp, -need);
		hp = 100;
		live = 1;
		sturn = 0;
		arm_type = "attack";
		server77_equal(serve_val.live, live, buffer_bool)
		normal_play(goza_1_act);
	}
	else
	{
		server202_sound(dead_sound);

		buffer_seek(buff_fast, buffer_seek_start, 0);
		
		buffer_write(buff_fast, buffer_u8, 44);//사후관리
	
		network_send_packet(0,buff_fast, 1);
		
		switch(global.team)
		{
			case 0:
				var up = 1;
			break;
			case 1:
				var up = 0;
			break;
			default:
				var up = irandom(1);
			break;
		}
		
		buffer_seek(buff_fast, buffer_seek_start, 0);
	
		buffer_write(buff_fast, buffer_u8, 99);
		buffer_write(buff_fast, buffer_bool, up);//팀점수 업
		buffer_write(buff_fast, buffer_u8, 0);
		buffer_write(buff_fast, buffer_u8, 1);
	
		network_send_packet(0,buff_fast,buffer_tell(buff_fast));
	

		if(level == 4) {
			scr_hat_change2(spr_hat1);
		}
		room_goto(room_out)
	}
}