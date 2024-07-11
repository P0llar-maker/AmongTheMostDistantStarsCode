Destroyer();
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
	
	case "ShootOneMore":
	ShootMoreOne();
	break
}
if (_Move_)
{
	Move();
}