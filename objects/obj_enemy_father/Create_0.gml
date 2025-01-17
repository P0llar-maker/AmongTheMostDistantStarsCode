image_blend = color;
image_xscale = scale;
image_yscale = scale;
delay_bullet = 0;
hspd = 0;
vspd = 0;
dir = 0;
HP_max = HP;
function Shoot()
{
	var _Shoot = distance_to_object(target) < distance;
	delay_bullet--;
	if (delay_bullet <= 0)
	{
		if (_Shoot)
		{
			delay_bullet = timer_bullet * room_speed;	
			var _bullet = instance_create_layer(x, y, "Bullet", bullet);
			_bullet.direction = point_direction(x, y, target.x, target.y);
			_bullet.speed = vel_bullet;
			_bullet.image_blend = color;
			_bullet.image_xscale  = BulletScale;
			_bullet.image_yscale  = BulletScale;
		}
	}
}

function ShootOtherDirection()
{
	delay_bullet--;
	if (delay_bullet <= 0)
	{
		delay_bullet = timer_bullet * room_speed;
		for (var i = 0; i < qtd_bullet; i++)
		{
			var angle = 360/qtd_bullet;
			var _bullet = instance_create_layer(x, y, "bullet", bullet);
			_bullet.direction = (i * angle);
			_bullet.speed = vel_bullet;
			_bullet.image_blend = color;
			_bullet.image_xscale  = BulletScale;
			_bullet.image_yscale  = BulletScale;
		}
	}
}
function ShootMoreOne()
{
	delay_bullet--;
	if (delay_bullet <= 0)
	{
		delay_bullet = room_speed * timer_bullet;
		for (var i = 0; i < qtd_bullet; i++)
		{
			var angle = _angle0 + (i * _angle1);
			var _target_ = point_direction(x, y, target.x, target.y);
			var _x = lengthdir_x(sprite_width, _target_ + angle)
			var _y = lengthdir_y(sprite_height, _target_ + angle)
			var _bullet = instance_create_layer(x+_x, y+_y, "bullet", bullet);
			_bullet.direction =  _target_ + angle;
			_bullet.speed = vel_bullet;
			_bullet.image_blend = color;
			_bullet.image_xscale  = BulletScale;
			_bullet.image_yscale  = BulletScale;
		}
	}
}
function Move()
{
	var _Distance_ = distance_to_object(target) > distance;
	if (_Distance_)
	{
		dir = point_direction(x, y, target.x, target.y);
		hspd = lengthdir_x(vel_move, dir);
		vspd = lengthdir_y(vel_move, dir);
		x+=hspd;
		y+=vspd;
	}
}
function Destroyer()
{
	if (HP <= 0)
	{
		instance_destroy();
	}
}
