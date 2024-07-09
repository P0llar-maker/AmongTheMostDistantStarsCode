function DestroyWhenOutTheRoom(_x, _y, _value)
{
	if (_x>room_width+_value){instance_destroy()};
	if (_y>room_height+_value){instance_destroy()};
	if (_x<0-_value){instance_destroy()};
	if (_y<0-_value){instance_destroy()};
}
