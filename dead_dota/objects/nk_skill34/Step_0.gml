image_xscale = cid_id.big_val * 1;
image_yscale = cid_id.big_val * 1;

if(cid_id.cancle_able == false or cid_id.sturn > 0) {
	instance_destroy();
}


if (ready = 1) {
    if (keyboard_check_released(global.keyw)) {
        image_speed= 10
	    alarm_set(0, 40);
    }
}