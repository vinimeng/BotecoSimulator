global.BotecoGrid = mp_grid_create(0, 0, room_width / 16, room_height / 16, 16, 16);
mp_grid_add_instances(global.BotecoGrid, PathBlocked, false);
mp_grid_add_instances(global.BotecoGrid, ChairLeft, false);
mp_grid_add_instances(global.BotecoGrid, ChairRight, false);
mp_grid_add_instances(global.BotecoGrid, Table4Chairs, false);
mp_grid_add_instances(global.BotecoGrid, Table2ChairsRight, false);