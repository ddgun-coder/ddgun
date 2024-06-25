/// @description Insert description here
// You can write your code in this editor
if( buff_index == buff_nin4 ) {
	DMG(floor(hp * 0.11	) + 15, 0 , 25);
	buff_index = spr_none;
	server77_equal(serve_val.buff_index, buff_index, buffer_u16);
}
else {
    DMG(15, 0, 25);
}