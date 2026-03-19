function scr_movimentacaodaroom(){
	if y < room_height/2
	{
		if movv < global.movy - 2
		{
			global.movy = movv
		}
		global.movy = clamp(global.movy,movv,0)
		if global.movy != 0 global.altura+=1/5
	
	}
	else 
	{
		global.movy = 0 
	}

}