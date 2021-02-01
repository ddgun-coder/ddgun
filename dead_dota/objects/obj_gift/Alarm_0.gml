/// @description Insert description here
// You can write your code in this editor
repeat(irandom(2) + 1) {
	var t =instance_create_depth(x,y, depth, obj_aexpballt)
}

repeat(irandom(4) + 1) {
	var t = instance_create_depth(x,y, depth, obj_dotaballt)
}
instance_destroy()