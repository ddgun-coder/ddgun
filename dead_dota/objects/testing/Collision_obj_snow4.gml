if (other.cid_id.q_attack_type = spr_mod3) {
    DMG_buff(other.dmg, buff_bwiza2, 25, 80)
        if(other.cid_id.w_attack_type = spr_mod3) {
            server79_create_instace_ext(obj_snow43, x, y - 320, other.cid_id);
        }
    }
else {
    DMG(other.dmg, spr_mod3, 25)
    if(other.cid_id.w_attack_type = spr_mod3) {
        server79_create_instace_ext(obj_snow43, x, y - 320, other.cid_id);
    }
}