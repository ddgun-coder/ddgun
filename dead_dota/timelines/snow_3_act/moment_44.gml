if (bullet >=4){
    server78_create_instace(sang_skill2, x + lengthdir_x(35 * big_val, YA - 90), y + lengthdir_y(35 * big_val, YA - 90));
}
else {
   view_visible[1] = false;
    view_visible[0] = true;
    view_where = 0;
    obj_telescope_view.tele = false;
    a_possible = true;
    effect_index = spr_none
}