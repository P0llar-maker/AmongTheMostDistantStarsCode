var up, down, left, right;
up = keyboard_check(vk_up) or keyboard_check(ord("W"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var Key = (up || down || right || left)
Shoot();
if (Key){
	dir = point_direction(0, 0, (right - left), (down - up));
	velh = lengthdir_x(vel, dir)
	velv = lengthdir_y(vel, dir)
}else{
	velh = lerp(velh, 0, 0.01);
	velv = lerp(velv, 0, 0.01);
}
if (place_meeting(x+velh, y, obj_block)){
	while (!place_meeting(x+sign(velh), y, obj_block)){
		x += sign(velh);
	}
	velh = 0;
}
if (place_meeting(x, y+velv, obj_block)){
	while !(place_meeting(x, y+sign(velv), obj_block)){
		y += sign(velv);
	}
	velv = 0;
}
CriticalDamage();

image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
x+=velh;
y+=velv;

