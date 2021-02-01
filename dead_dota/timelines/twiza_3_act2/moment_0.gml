a_cooltime = 20;

buffer_seek(buff_chat, buffer_seek_start, 0);
			
buffer_write(buff_chat, buffer_u8, 8);//8은 같은팀 찾기
buffer_write(buff_chat, buffer_u8, 1);
var minind = 0;
var mind = 384;
for(var i = 1; i < 24; i++) {
	var obj = global.cid_array[i];
	if (obj.team == global.team) {
		if (obj.x > 0 and obj.y > 0) {
			if (i != global.my_cid) {
				var dis = distance_to_object(obj)
				if (mind > dis) {
					mind = dis
					minind = obj;
				}
			}
		}
	}
}
if (minind == 0) {
	prt_val_add(Val.mp, 150);
	server78_create_instace(twiza_skill3_2, x, y);
}
else {
	buffer_write(buff_chat, buffer_u8, minind  - testing0);
	network_send_packet(0,buff_chat,buffer_tell(buff_chat));
}