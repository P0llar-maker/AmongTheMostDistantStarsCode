event_inherited();
delay = 0;
timer = 0.7;
velh = 0;
velv = 0;
move = true;
dir = -1;

Square_Move = function()
{
	if (move)
	{
		dir = point_direction(x, y, target.x, target.y);
		velh = lengthdir_x(vel_move,dir);
		velv = lengthdir_y(vel_move,dir);
	}
	else
	{
		velh = lerp(velh, 0, 0.01);
		velv = lerp(velv, 0, 0.01);
	}
	x+=velh;
	y+=velv;
}
