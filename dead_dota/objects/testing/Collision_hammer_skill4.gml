if (other.team != global.team) {
   DMG(25, 0, 80);
}
if (other.cid_id == global.my_cid_id) {
	var _time_source = time_source_create(time_source_game, 1, time_source_units_frames, function() {
	   if (instance_exists(testing)) {
	      testing.armor += 1;   
	   }
	}, [] , 50);

	time_source_start(_time_source);
	instance_destroy(other);
}