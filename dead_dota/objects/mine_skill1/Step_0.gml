x = cid_id.x + lengthdir_x(-300 + deltay, cid_id.YA - 90);
y = cid_id.y + lengthdir_y(-300 + deltay, cid_id.YA - 90);
image_angle = cid_id.YA;
image_xscale = cid_id.big_val * 2;
image_yscale = cid_id.big_val * 2;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	with(testing) {
	    buff_index = spr_none;
        buff_time = 40;
        server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
	instance_destroy();
}
if (global.my_cid == cid) {
	solid = false;
}
if (deltay < 300) {
	deltay += 15;
}