var up, down, left, right;
up = keyboard_check(vk_up) or keyboard_check(ord("W"));
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var Key = (up || down || right || left)
move_wrap(true, true, 0);
Shoot();
if (Key){
	dir = point_direction(0, 0, (right - left), (down - up));
	velh = lengthdir_x(vel, dir)
	velv = lengthdir_y(vel, dir)
}else{
	velh = lerp(velh, 0, 0.01);
	velv = lerp(velv, 0, 0.01);
}
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
x+=velh;
y+=velv;

