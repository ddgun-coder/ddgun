a_cooltime = 40;
for(var i = 0; i < 10; i++) {
	server78_create_instace(pota_skill3, irandom(room_width), irandom(room_height));
	server78_create_instace(pota_skill3, x + lengthdir_x(300 * big_val,i * 36), y + lengthdir_y(300 * big_val,i * 36));
}