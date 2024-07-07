if (AngleChangeByPlayer)
{
	image_angle = point_direction(x, y, target.x, target.y) - 90;
}
switch TypeShoot
{
	case "OneDirection":
	Shoot();
	break
	
	case "OtherDirections":
	ShootOtherDirection();
	break
}
Move();
