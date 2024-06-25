hide_bam = false
for(i = 25; i > 0; i--) {
	if(place_free(x + lengthdir_x(10 * i, YA - 90), y + lengthdir_y(10 * i, YA - 90)))
	{
		x += lengthdir_x(10 * i, YA - 90);
		y += lengthdir_y(10 * i, YA - 90);
		break;
	}//앞으로 자동이동
}