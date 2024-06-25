DMG_buff(8, buff_noheal, 15, 120)
if (other.team != global.team) {
    if (live = 0) {
	    other_cid = other.cid;
	    live = 2;
	    prt_val_add(Val.mp, - (mana * 0.3))
	    server77_equal(serve_val.live, 2, buffer_s8)
	    buffer_seek(buff_chat, buffer_seek_start, 0);
				
	    buffer_write(buff_chat,buffer_u8,101);//101은 때린 사람 경험치 주기
	    buffer_write(buff_chat,buffer_f32,100);
	    buffer_write(buff_chat,buffer_u8,other_cid);
	
	    network_send_packet(0,buff_chat,6);
    }
}