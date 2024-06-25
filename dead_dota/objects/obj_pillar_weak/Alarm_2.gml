/// @description Insert description here
// You can write your code in this editor
var to_cid;
if (global.my_cid == cid) {
	to_cid = testing;
}
else {
	to_cid = cid_id;	
}

var _id, _id2;
image_speed = 0;

var _id1 = instance_create_depth(x, y, depth, obj_pillar_chain);

_id1.number = 0;
_id1.to_cid = to_cid;
_id1.max_number = chain_num;

chain_id[0] = _id1;
max_len = 0;
for (var i = 1; i < chain_num; i++) {
	_id2 = instance_create_depth(x + 32 * i, y, depth, obj_pillar_chain);
	chain_id[i] = _id2;
	_id2.number = i;
	_id2.to_cid = to_cid;
	_id2.max_number = chain_num;
	_id1.linked_id = _id2;
	_id2.linked_id2 = _id1;

	_id1 = _id2;
}
