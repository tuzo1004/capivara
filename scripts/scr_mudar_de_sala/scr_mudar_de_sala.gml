function scr_mudar_de_sala(destino){
	
	if !obj_global.trocando
	{
		obj_global.proximasala = destino
		obj_global.trocando = true
	}

}