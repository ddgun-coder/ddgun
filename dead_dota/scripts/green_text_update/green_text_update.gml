function green_text_update(argument0) 
{
	var text = argument0;

	for (i = 4; i >= 1; i--)
	{
			green_text[i] = green_text[i - 1]
	}

	green_text[0] = text;
}