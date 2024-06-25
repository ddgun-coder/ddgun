if (shop_UI.windows_index == 0 and shop_UI.windows == true)
{
global.item_show = num;
shop_button1.item_array_set(num);
shop_button1.item_surf();
shop_button1.my_layer = 0;
shop_button1.surf_y = 0
}