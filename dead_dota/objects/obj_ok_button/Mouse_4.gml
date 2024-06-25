if (!visible) exit;
if (!sprite_exists(pickaxe_UI.index)) exit;
var str = sprite_get_name(pickaxe_UI.index);
if (str != "") {
	if (global.pickaxe_exist[real(string_digits(str)) - 1] == true)
	{
		global.pickaxe_index = pickaxe_UI.index
	}
}