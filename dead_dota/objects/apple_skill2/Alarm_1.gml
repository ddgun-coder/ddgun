/// @description Insert description here
// You can write your code in this editor
var count = 0;
for (var i = 0; i < instance_number(apple_skill2); i++) {
	var temp_id = instance_find(apple_skill2, i);
	if (temp_id.cid == cid) { 
		count++;	
	}
}
if (count > 1) {
	instance_destroy(temp_id);	
}