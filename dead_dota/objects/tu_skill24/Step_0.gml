x = cid_id.x - lengthdir_x(dir / 2, t);
y = cid_id.y + lengthdir_x(dir, t);
image_angle = t;
if (cid_id.skin == 1) {
	sprite_index =  spr_west_tu2;
}
image_xscale += 0.05;
image_yscale += 0.05;
t += 7;
dir += 1;

if (cid_id.up_skill = 0) {
	instance_destroy();	
}
