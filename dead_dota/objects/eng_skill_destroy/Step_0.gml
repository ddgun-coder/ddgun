spin += 10;
image_angle = spin;
if (cid_id.live != 1) {
	instance_destroy()
}

if (hp <= 0 ) {
	prt_val_add(Val.gi, 80);
	instance_destroy()
}