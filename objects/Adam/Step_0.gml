keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyNoKey = keyboard_check(vk_nokey);

horizontalSpeed = (keyRight - keyLeft) * walkingSpeed;
verticalSpeed = (keyDown - keyUp) * walkingSpeed;

x += horizontalSpeed;
y += verticalSpeed;

if (keyRight) {
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingRight;
    facingDirection = 0;
}

if (keyUp) {
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingUp;
    facingDirection = 1;
}

if (keyLeft) {
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingLeft;
    facingDirection = 2;
}

if (keyDown) {
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingDown;
    facingDirection = 3;
}

if (keyNoKey) {
    image_speed = 0;
    sprite_index = AdamIdle;
    image_index = facingDirection;
}
