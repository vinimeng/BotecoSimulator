switch (sprite) {
    case "Adam":
        switch (spriteAnim) {
            default:
                draw_sprite(AdamIdle, image_index, x, y);
        }
        break;
    case "Amelia":
        switch (spriteAnim) {
            default:
                draw_sprite(AmeliaIdle, image_index, x, y);
        }
        break;
    case "Alex":
        switch (spriteAnim) {
            default:
                draw_sprite(AlexIdle, image_index, x, y);
        }
        break;
}

if (drawPath) {
    draw_path(path, x, y, true);
}
