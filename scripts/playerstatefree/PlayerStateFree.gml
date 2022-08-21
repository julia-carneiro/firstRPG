function PlayerStateFree() {
	//movimento 
	hsp = lengthdir_x(inputMagnitude*spd, inputDirection);
	vsp = lengthdir_y(inputMagnitude*spd, inputDirection);

	PlayerCollision();

	//sprite index 

	var _oldSprite = sprite_index;
	if (inputMagnitude != 0){
		direction = inputDirection;
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;

	if (_oldSprite != sprite_index) localFrame = 0;

	//update image index
	PlayerAnimateSprite();

	//mudar state*

	if (keyActivate){

	state = PlayerStateRoll;
	moveDistanceRemaining = distanceRoll;
	}


}
