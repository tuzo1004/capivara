y = ystart + WAVE/2
image_angle = WAVE/2
escala = lerp(escala,1,.1)
if estado == "obtida"
{
	cor = c_white
	placa = asset_get_index("spr_papelslotskin_" + posicao)
}
else
{
	cor = c_black
	placa = asset_get_index("spr_slotskin" + posicao)
	
}
sprite_index = placa

