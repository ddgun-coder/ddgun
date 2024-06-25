if (other.image_alpha = 1) {
	DMG(10, n_attack_area, 80)
	DMG_buff_team(buff_timeb, 280)
	if (global.my_cid == other.cid) {
		if(sturn > 0) { 
			sturn = 0
			m_sturn = 0
		}
	}
}



