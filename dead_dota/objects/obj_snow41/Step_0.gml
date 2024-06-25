/*if (alarm[1] < 0) {
   x += lengthdir_x(20 * cid_id.big_val, YA - 90);
   y += lengthdir_y(20 * cid_id.big_val, YA - 90);
}
else {
    if(cid_id.cancle_able == false or cid_id.sturn > 0) {
       instance_destroy();
    }
}
*/
switch (cid_id.q_attack_type) {
	case spr_mod1:
	    image_xscale = cid_id.big_val * 1.8;
        image_yscale = cid_id.big_val * 1.8;
	break;
	default:
		image_xscale = cid_id.big_val * 1;
        image_yscale = cid_id.big_val * 1;	
	break;
 }
  
switch (cid_id.d_attack_type) {
	case spr_mod2 :
	    time += 0.8
		dmg -= 1
		x += lengthdir_x(33 * cid_id.big_val, YA - 90);
        y += lengthdir_y(33 * cid_id.big_val, YA - 90);
	break;
	default :
		x += lengthdir_x(28 * cid_id.big_val, YA - 90);
        y += lengthdir_y(28 * cid_id.big_val, YA - 90);
	    time ++
		dmg -= 2
	break;
    }