if floor(global.altura) > global.recorde  global.recorde = floor(global.altura)
alpha = lerp(alpha,trocando,.1)
if alpha > .90
{
	room_goto(proximasala)
	trocando = false
}