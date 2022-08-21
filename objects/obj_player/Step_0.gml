//inputs(player)
keyLeft =  keyboard_check(vk_left) or keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) or keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up) or keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down) or keyboard_check(ord("S"));
//interagir - ncp - item
keyActivate = keyboard_check_pressed (vk_space);
keyAttack = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("E"));
keyItem = keyboard_check_pressed(ord("X")) or keyboard_check_pressed(ord("Q"));
inputDirection = point_direction(0,0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);

if (!global.gamePaused) script_execute(state);
