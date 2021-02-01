image_xscale = cid_id.big_val * 1.1;
image_yscale = cid_id.big_val * 1.1;
image_angle = cid_id.YA + YAdelta;
y = cid_id.y ;
x = cid_id.x ;
YAdelta += 6;
if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}