image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;

delta -= 0.02;
if (delta < 0) delta = 0;
cid_id.face_delta += delta;
if (global.my_cid_id == cid_id) {
	testing.face_delta += delta;
	testing.go_to_speed = 2 * delta;
}