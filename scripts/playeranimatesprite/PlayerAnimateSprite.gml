function PlayerAnimateSprite() {
	//update sprite 

	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = localFrame + (CARDINAL_DIR * _totalFrames)
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	//se a animação for recomeçar no proximo passo
	if (localFrame >= _totalFrames){
	
		animationEnd = true;
		localFrame -= _totalFrames;

	}else animationEnd = false;

	if localFrame >= _totalFrames - 1 {	
		animationEnd= true;
		localFrame -= _totalFrames;	
		localFrame = clamp(localFrame, 0, sprite_get_number(sprite_index) / CARDINAL_DIR);
	}




}
