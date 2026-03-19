if obj_capivara.bbox_bottom < bbox_bottom
{
	sprite_index = tipodeplataforma
}
else sprite_index = -1

spriteatual+=velocidadedosprite
if spriteatual > 8 spriteatual = 0

y-=global.movy
altura-=global.movy

switch tipodeplataforma
{
	case spr_plataformapassarinho:
	if x <= 0 ||	x >= room_width
	{
		vel = -vel
	}
	x+=vel
	with coletavel
	{
		x = other.x
	}
	break
	
	case spr_plataformafolha:
	if colidiu 
	{
		y+=4
	}
	
	break
}

if altura-sprite_height/2 > room_height
{
	obj_jogo.podecriar = true
	instance_destroy()
}