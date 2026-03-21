if funcao ==  "comprar"
{
	if global.acais >= preco
	{
		global.acais-=preco
		struct_set(global.skins,skin,"obtida")
		estado ="obtida"
	}
}
if estado = "obtida"
{
	global.skin = skin
}
audio_pause_sound(snd_clique)
audio_play_sound(snd_clique,1,false,.5,0,random_range(.8,1))
escala = 1.5