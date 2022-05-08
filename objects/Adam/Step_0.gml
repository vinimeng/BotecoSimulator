if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
    x += walkingSpeed;
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingRight;
    facingDirection = 0;
}

if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
    y -= walkingSpeed;
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingUp;
    facingDirection = 1;
}

if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
    x -= walkingSpeed;
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingLeft;
    facingDirection = 2;
}

if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
    y += walkingSpeed;
    image_speed = walkingSpeed / 3;
    sprite_index = AdamWalkingDown;
    facingDirection = 3;
}

if (keyboard_check(vk_nokey)) {
    image_speed = 0;
    sprite_index = AdamIdle;
    image_index = facingDirection;
}
