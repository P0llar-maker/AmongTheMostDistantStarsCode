_x = 0;
_y = 0;
delay = 0;
timer = 2;
function Generate()
{
	delay--;
	if (delay <= 0)
	{
		delay = timer * room_speed;
		var side = irandom(1);
		if (side == 1)
		{_y = choose(-64, 784);_x = irandom(room_width);}
		if (side == 0)
		{_y = irandom(room_height);_x = choose(-64, 1344);}
		instance_create_layer(_x, _y, "asteroids", obj_asteroids);
	}
}
