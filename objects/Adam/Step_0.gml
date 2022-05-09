var bbox_side;

keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyNoKey = keyboard_check(vk_nokey);

horizontalSpeed = (keyRight - keyLeft) * walkingSpeed;
verticalSpeed = (keyDown - keyUp) * walkingSpeed;

horizontalSpeedCheck = horizontalSpeed > 0;

if (horizontalSpeedCheck) {
    bbox_side = bbox_right;
} else {
    bbox_side = bbox_left;
}

horizontalCollisionCheck1 = tilemap_get_at_pixel(tileLayerCollisionWalls, bbox_side + horizontalSpeed, bbox_top) != 0;
horizontalCollisionCheck2 = tilemap_get_at_pixel(tileLayerCollisionWalls, bbox_side + horizontalSpeed, bbox_bottom) != 0;

if (horizontalCollisionCheck1 || horizontalCollisionCheck2) {
    if (horizontalSpeedCheck) {
        x = x - (x mod 32) + 31 - (bbox_right - x);
    } else {
        x = x - (x mod 32) - (bbox_left - x);
    }
    
    horizontalSpeed = 0;
}

verticalSpeedCheck = verticalSpeed > 0;

if (verticalSpeedCheck) {
    bbox_side = bbox_bottom;
} else {
    bbox_side = bbox_top;
}

verticalCollisionCheck1 = tilemap_get_at_pixel(tileLayerCollisionWalls, bbox_left, bbox_side + verticalSpeed) != 0;
verticalCollisionCheck2 = tilemap_get_at_pixel(tileLayerCollisionWalls, bbox_right, bbox_side + verticalSpeed) != 0;

if (verticalCollisionCheck1 || verticalCollisionCheck2) {
    if (verticalSpeedCheck) {
        y = y - (y mod 32) + 31 - (bbox_bottom - y);
    } else {
        y = y - (y mod 32) - (bbox_top - y);
    }
    
    verticalSpeed = 0;
}

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
