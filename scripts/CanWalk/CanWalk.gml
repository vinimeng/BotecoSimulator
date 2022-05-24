function CanWalk(obj, nextX, nextY, path){
    with (obj) {
        if (mp_grid_path(global.BotecoGrid, path, obj.x, obj.y, nextX, nextY, true)) {
			path_set_kind(path, 1);
			path_set_precision(path, 8);
            path_start(path, 3.5, path_action_stop, 0);
        }
    }
}