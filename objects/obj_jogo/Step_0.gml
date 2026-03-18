layer_vspeed("Background",-global.movy)


if podecriar
{
	randomise()
	var cordx = irandom_range(0+32,room_width-32)
	var altura = irandom_range(-12,-22)
	podecriar = false
	instance_create_layer(cordx,altura,"Instances",obj_plataforma)
}