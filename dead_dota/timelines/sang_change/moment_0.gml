a_a_cooltime = 20
d_attack_type = spr_sangbow
q_attack_type = spr_sangbow 
w_attack_type = spr_sangbow
buff_time = 160
buff_index = buff_sang;
server77_equal(serve_val.buff_index, buff_index, buffer_u16)
server77_equal(serve_val.d_attack_type, d_attack_type, buffer_u16);;
server78_create_instace(sang_changeskill, x, y);