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
 
var _list = ds_list_create();
var _num = instance_place_list(x, y, all, _list, false);
if (_num > 0)
{
    for (var i = 0; i < _num; ++i;)
    {
        var _id = _list[| i];
        if (_id.solid) {
            if (_id.object_index != obj_testing and _id.object_index != testing and _id.object_index != global.cid_array[cid]) {
                var name = instance_create_depth(x, y, 200,obj_snow_effect);
                 name.cid_id = cid_id;
                 name.cid = cid;
                 name.team = team;
                 instance_destroy();
            }
        }
    }
}
ds_list_destroy(_list);
  
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
