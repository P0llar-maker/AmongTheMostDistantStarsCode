image_blend = c_yellow;
image_xscale = 0.4;
image_yscale = 0.4;
delay = 0;
timer = 0.7;
vel_bullet = 3.5;
hspd = 0;
vspd = 0;
dir = 0;
target = obj_player;
spd = 2.5;
function Shoot()
{
	var _Shoot = distance_to_object(obj_player) < 200;
	delay--;
	if (delay <= 0)
	{
		if (_Shoot)
		{
			delay = timer * room_speed;	
			var bullet = instance_create_layer(x, y, "Bullet", obj_bullet_player);
			bullet.direction = image_angle + 90;
			bullet.speed = vel_bullet;
			bullet.image_blend = c_yellow;
		}
	}
}
function Move()
{
	var _Distance_ = distance_to_object(obj_player) > 200;
	if (_Distance_)
	{
		dir = point_direction(x, y, target.x, target.y);
		hspd = lengthdir_x(spd, dir);
		vspd = lengthdir_y(spd, dir);
		x+=hspd;
		y+=vspd;
	}
}