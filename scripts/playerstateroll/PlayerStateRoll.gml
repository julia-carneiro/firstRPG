function PlayerStateRoll() {
	//movimento 
	hsp = lengthdir_x(spdRoll,direction);
	vsp = lengthdir_y(spdRoll, direction);

	moveDistanceRemaining = max(0,moveDistanceRemaining - spdRoll);
	var _collided = PlayerCollision();

	//sprite update 
	sprite_index = spriteRoll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1- (moveDistanceRemaining / distanceRoll)) * _totalFrames), _totalFrames - 1);

	///mudar o state
	if (moveDistanceRemaining <= 0){
		state = PlayerStateFree;
	}

	if (_collided){
		state = PlayerStateFree;
		ScreenShake(4,8);

	}


}
