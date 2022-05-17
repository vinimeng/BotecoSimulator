var lay_id = layer_get_id("Collision");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, x, y);
show_debug_message(data);
