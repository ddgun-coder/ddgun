if (cid == global.my_cid) {
    testing.hide_bam = false
}
cid_id.hide_bam = false
instance_destroy();

var ida = instance_create_depth(x, y, -100,tu_skill43);
	ida.team = team;
	ida.cid = cid;
	ida.cid_id = cid_id;
	ida.YA = image_angle;
