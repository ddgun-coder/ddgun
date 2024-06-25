/*
switch(cid_id.w_attack_type) {
case spr_mod1:

if (cid_id.d_attack_type = spr_mod2) {
    repeat(10) {
       var _YA = irandom_range(YA - 8, YA + 8)
       server79_create_instace_ext(obj_snow41, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}
else {
	  repeat(7) {
       var _YA = irandom_range(YA - 15, YA + 15)
       server79_create_instace_ext(obj_snow41, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}// 고드름 탄퍼짐
break;

case spr_mod3:
	server78_create_instace(obj_snow43, x, y);
break; // 오리눈


default:
if (cid_id.d_attack_type = spr_mod2) {
    repeat(10) {
       var _YA = irandom_range(YA - 8, YA + 8)
       server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}
else {
	  repeat(7) {
       var _YA = irandom_range(YA - 15, YA + 15)
       server79_create_instace_ext(obj_snow4, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), _YA)
    }
}//탄퍼짐
break;


}
  var name = instance_create_depth(x, y, 200,obj_snow_effect1);
      name.cid_id = cid_id;
      name.cid = cid;
      name.team = team;
      instance_destroy();
	  */
	  
switch(cid_id.w_attack_type) {
case spr_mod1:

if (cid_id.d_attack_type = spr_mod2) {
    repeat(10) {
       var snow41 = instance_create_depth(x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), 200, obj_snow41)
	   snow41.YA = irandom_range(YA - 15, YA + 15)
	   snow41.cid_id = cid_id;
	   snow41.cid = cid;
	   snow41.team = team;
    }
}
else {
	  repeat(7) {
       var snow41 = instance_create_depth(x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), 200, obj_snow41)
	   snow41.YA = irandom_range(YA - 15, YA + 15)
	   snow41.cid_id = cid_id;
	   snow41.cid = cid;
	   snow41.team = team;
    }
}// 고드름 탄퍼짐
break;
default:
if (cid_id.d_attack_type = spr_mod2) {
    repeat(10) {
       var snow4 = instance_create_depth(x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), 200, obj_snow4)
	   snow4.YA = irandom_range(YA - 15, YA + 15)
	   snow4.cid_id = cid_id;
	   snow4.cid = cid;
	   snow4.team = team;
    }
}
else {
	  repeat(7) {
       var snow4 = instance_create_depth(x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90), 200, obj_snow4)
	   snow4.YA = irandom_range(YA - 15, YA + 15)
	   snow4.cid_id = cid_id;
	   snow4.cid = cid;
	   snow4.team = team;
    }
}//탄퍼짐
break;


}
  var name = instance_create_depth(x, y, 200,obj_snow_effect1);
      name.cid_id = cid_id;
      name.cid = cid;
      name.team = team;
      instance_destroy();
	  
	  