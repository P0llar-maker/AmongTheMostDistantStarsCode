velh = 0;
velv = 0;
dir = 0;
vel = 2.5;
vel_bullet = 4.5;
delay = 0;
timer = 1;

function Shoot()
{
	var KeyShoot = mouse_check_button(mb_left);
	delay--;
	if (delay <= 0)
	{
		if (KeyShoot)
		{
			delay = timer * room_speed;	
			var bullet = instance_create_layer(x, y, "Bullet", obj_bullet_player);
			bullet.direction = image_angle + 90;
			bullet.speed = vel_bullet;
		}
	}
}
