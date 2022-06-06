if (mp_grid_path(global.BotecoGrid, path, x, y, mouse_x, mouse_y, true)) {
    path_set_kind(path, 1);
    path_set_precision(path, 8);
    path_start(path, 3.5, path_action_stop, 0);
    moving = true;
}
drawPath = true;
