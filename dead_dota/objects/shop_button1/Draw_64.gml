 if(instance_exists(shop_UI)) {
   if(shop_UI.windows == true and shop_UI.windows_index == 0)
   {
	    if (!surface_exists(surf)) item_surf();
		
		draw_surface_part(surf, 0, surf_y, 80 * weight, 80 * 3.9, xstart - 40, ystart - 40);
	}
}
depth = - 5000



