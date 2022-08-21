
state = PlayerStateFree;

//colisão
collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

//parar animação automatica 
image_speed =  0;

//variáveis 
hsp = 0;
vsp = 0; 
spd = 2.0;
spdRoll = 3.0;
distanceRoll = 72;

spriteRoll = spr_playerRoll
spriteRun = spr_PlayerRun;
spriteIdle = spr_player;
localFrame = 0;

