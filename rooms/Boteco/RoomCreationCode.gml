randomise();
global.BotecoGrid = mp_grid_create(0, 0, room_width / 8, room_height / 8, 8, 8);
mp_grid_add_instances(global.BotecoGrid, PathBlocked, false);
mp_grid_add_instances(global.BotecoGrid, ChairObject, false);
mp_grid_add_instances(global.BotecoGrid, TableObject, false);
