a_possible = false;
var out = false;
for (var i = 0; i < instance_number(music_skill2); ++i;) {
	var music_id = instance_find(music_skill2,i);
	if (music_id.cid == global.my_cid) {
		out = true;
		server78_create_instace(music_skill33, x, y);
		break;	
	}
}
if (!out) {
	server78_create_instace(music_skill3, x, y);
}