if (global.my_cid_id != other.cid_id) {
    if (other.team == global.team) {
	    aexp += 24;
	    hp += 10
	    instance_destroy(other.id);
    }
}