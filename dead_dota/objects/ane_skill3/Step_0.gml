x = cid_id.x
y = cid_id.y
image_angle = cid_id.YA;
if (cid_id.skin == 2) {
	sprite_index =  Spr_evil_ane3;
}
if (cid_id.skin == 3) {
	sprite_index =  spr_ex_ane3;
}
image_xscale = 2.5;
image_yscale = 2.5;

if (cid_id.live != 1) {
	instance_destroy()	
}