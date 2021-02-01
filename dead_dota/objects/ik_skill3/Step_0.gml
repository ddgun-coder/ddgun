image_xscale = cid_id.big_val * 3 * 1.3;
image_yscale = cid_id.big_val * 3 * 1.3;
image_angle = cid_id.YA + deltaYA;
y = cid_id.y + lengthdir_y(150 * cid_id.big_val, cid_id.YA - 90) - lengthdir_y(22 * cid_id.big_val, cid_id.YA);
x = cid_id.x + lengthdir_x(150 * cid_id.big_val, cid_id.YA - 90) - lengthdir_x(22 * cid_id.big_val, cid_id.YA);

sprite_index = cid_id.arm;
var a = irandom(1);
if(a) {
	deltaYA += 2;
}
else {
	deltaYA -= 2;
}