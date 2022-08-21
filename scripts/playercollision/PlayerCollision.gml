function PlayerCollision() {
	var _collision = false;

	//tiles horizontais 
	if (tilemap_get_at_pixel(collisionMap,x+hsp, y)){

		x -= x mod TILE_SIZE;
		if (sign(hsp) == 1) x += TILE_SIZE - 1;
		hsp = 0;
		_collision = true;
	
	}

	//movimento horizontal 
	x += hsp;


	//tiles vertical 
	if (tilemap_get_at_pixel(collisionMap,x,y+vsp)){

		y -= y mod TILE_SIZE;
		if (sign(vsp) == 1) y += TILE_SIZE - 1;
		vsp = 0;
		_collision = true;
	
	}

	//movimento vertical
	y += vsp;


	return _collision;


}
