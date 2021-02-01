DMG_buff(10, buff_mpkiller, 30, 40);
if (global.team != other.team) {
	instance_destroy(other.id);	
}