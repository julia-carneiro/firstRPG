function ScreenShake(argument0, argument1) {
	// screenshake (magnitude, frames)
	// magnitude = ''força'' do balanço (distancia)
	// frames - tempo (60 = 1seg)

	with (global.iCamera) {
	if(argument0 > shakeRemain){

		shakeMagnitude = argument0 ;
		shakeRemain = shakeMagnitude;
		shakeLength = argument1;

	}

	}


}
