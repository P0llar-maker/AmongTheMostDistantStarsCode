image_blend = c_yellow;
image_xscale = 0.4;
image_yscale = 0.4;
delay = 0;
timer = 0.7;
vel_bullet = 3.5;
function Shoot()
{
	var KeyShoot = distance_to_object(obj_player) < 150;
	delay--;
	if (delay <= 0)
	{
		if (KeyShoot)
		{
			delay = timer * room_speed;	
			var bullet = instance_create_layer(x, y, "Bullet", obj_bullet_player);
			bullet.direction = image_angle + 90;
			bullet.speed = vel_bullet;
			bullet.image_blend = c_yellow;
		}
	}
}
