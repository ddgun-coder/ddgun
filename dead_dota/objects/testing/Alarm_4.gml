if (card_name == "고자좀비") {
	hp = 100;
	live = 1;
	sturn = 0;
	arm_type = "attack";
	card_name = "none";
	server77_equal(serve_val.live, live, buffer_bool)
	normal_play(goza_1_act);
	with (obj_card_manager) {
		card_playing = false;
		cur_card_str = noone;
		var _id = instance_create_depth(x - 45, y - 75 , depth - 1, obj_card_disappear);
		_id.surf = surface_create(180, 300);
		surface_copy(_id.surf, 0, 0, surf);
	}
	exit;
}
if (global.hat != spr_hat5)
{
	if (room != room_magic) {
		server202_sound(dead_sound);

		buffer_seek(buff_fast, buffer_seek_start, 0);
		
		buffer_write(buff_fast, buffer_u8, 44);//사후관리
	
		network_send_packet(0,buff_fast, 1);
	

		if(level == 4) {
			scr_hat_change2(spr_hat1);
		}
		
	}
	else {
		hp = 100;
		live = 1;
		sturn = 0;
		arm_type = "attack";
		server77_equal(serve_val.live, live, buffer_bool)
		normal_play(goza_1_act);
	}
}
else
{
	var need;
	if(level == 4) {
		need = 70;
	}
	else {
		need =(200 - level * 10);
	}
	
	if (mana >= need)
	{
		prt_val_add(Val.mp, -need);
		hp = 50;
		live = 1;
		sturn = 0;
		arm_type = "attack";
		for(var i = 0; i < MAX_ITME_BOX; i++) {
			global.item_time[i] += global.item_time_max[i] / 4
		}
		server77_equal(serve_val.live, live, buffer_bool)
		normal_play(goza_1_act);
	}
	else
	{
		server202_sound(dead_sound);

		buffer_seek(buff_fast, buffer_seek_start, 0);
		
		buffer_write(buff_fast, buffer_u8, 44);//사후관리
	
		network_send_packet(0,buff_fast, 1);
		var up = 0;
		switch(global.team) {
         case 0:
            up = 1;
         break;
         case 1:
            up = 0;
         break;
         default:
            up = irandom(1);
         break;
      }
      var scr = 1;
      if (level >= 3) {
         scr = 2;
      }
      buffer_seek(buff_chat, buffer_seek_start, 0);
      buffer_write(buff_chat, buffer_u8, 99);
      buffer_write(buff_chat, buffer_bool, up);//팀점수 업
      buffer_write(buff_chat, buffer_u8, cur_attack);
      buffer_write(buff_chat, buffer_u8, scr);
   
      network_send_packet(0,buff_chat,buffer_tell(buff_chat));
	}
}