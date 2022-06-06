if (!cooldown) {
    if (executingAction) {
        switch (currentAction) {
            case "Sit":
                var nextY = 0;
                var nextX = 0;
                if (currentChairIdentifier == "TopLeft") {
                    nextY = currentChair.y + 15;
                    nextX = currentChair.bbox_left - 8;
                    image_index = 0;
                } else if (currentChairIdentifier == "TopRight") {
                    nextY = currentChair.y + 15;
                    nextX = currentChair.bbox_right + 9;
                    image_index = 2;
                } else if (currentChairIdentifier == "BottomLeft") {
                    nextY = currentChair.y + 15;
                    nextX = currentChair.bbox_left - 8;
                    image_index = 0;
                } else if (currentChairIdentifier == "BottomRight") {
                    nextY = currentChair.y + 15;
                    nextX = currentChair.bbox_right + 9;
                    image_index = 2;
                }
            
                if (mp_grid_path(global.BotecoGrid, path, x, y, nextX, nextY, true)) {
            		path_set_kind(path, 1);
            		path_set_precision(path, 8);
                    var pathSpeed = random_range(2.5, 3.75);
                    path_start(path, pathSpeed, path_action_stop, 0);
                    moving = true;
                }
                break;
            case "Food":
                break;
            case "Drink":
                break;
            case "Plants":
                break;
            case "Toilet":
                break;
            case "Counter":
                break;
            case "TV":
                break;
            case "Mirror":
                break;
            case "Leave":
                break;
        }
        executingAction = false;
        cooldown = true;
        alarm[0] = room_speed * (irandom_range(10, 25));
    }
}

if (moving) {
    if (path_position == 1) {
        switch (currentAction) {
            case "Sit":
                x = currentChair.x;
                y = currentChair.y + 5;
                break;
            case "Food":
                break;
            case "Drink":
                break;
            case "Plants":
                break;
            case "Toilet":
                break;
            case "Counter":
                break;
            case "TV":
                break;
            case "Mirror":
                break;
            case "Leave":
                break;
        }
        moving = false;
    }
}

