function get_dota(argument0) {
	var dota_a = argument0;

	if (other.cid != global.my_cid) {
		prt_val_add(Val.ball, dota_a);
		instance_destroy(other.id);
	}


}
