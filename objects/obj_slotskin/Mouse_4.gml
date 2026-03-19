if funcao ==  "comprar"
{
	if global.acais >= preco
	{
		global.acais-=preco
		struct_set(global.skins,skin,"obtida")
		estado ="obtida"
	}
}
else
{
	global.skin = skin
}
escala = 1.5