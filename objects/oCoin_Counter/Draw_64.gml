/// @description Insert description here
// You can write your code in this editor

var _x = oController.guiWidth - oController.guiWidth/19
var _y = 70//oController.guiHeight - oController.guiHeight/10

draw_sprite(sCoin_Counter,image_index,_x,_y)

draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_font(fnt_Unzialish)
//if room != room_upgrade
//{
//	draw_text(_x,_y,global.coins_collected)
//}
//else
//{
	draw_text(_x,_y,global.playerpoints+global.coins_collected)
//}
