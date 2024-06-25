/// @description Insert description here
// You can write your code in this editor
DMG_no_surn(0);
if(buff_index == buff_nin4) {
if (other.cid != global.my_cid) {
	extra_speed = -4;	
}
}
if (global.my_cid == other.cid) {
	if(buff_index != buff_shadow and buff_change_time < 0) {
		buff_change_time = 30;
		buff_index = buff_shadow;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
	buff_time = 10;
}
if (global.my_cid == other.cid) {
    if( m_stemina > stemina) {
        stemina += 1
	 }
}
if (other.team != global.team) {
	stemina = 0
	if (go_to_speed >= 1 or jumping = true) {
		go_to_speed = 0
		jumping = false
		buff_index = buff_nin4;
		buff_time = 160;
		server77_equal(serve_val.buff_index, buff_index, buffer_u16);
	}
}