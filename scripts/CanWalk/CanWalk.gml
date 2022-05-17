function CanWalk(nextX, nextY, layer){
	var layerId = layer_get_id("Collision");
	var collisionTileMap = layer_tilemap_get_id(layerId);
	
	var data = tilemap_get_at_pixel(map_id, x, y);
	
	
	
	return false;
}