/// @description Insert description here
// You can write your code in this editor
/*
if room != room_menu or room != room_upgrade
{
	if (file_exists("Save.sav")) file_delete("Save.sav");
	var SaveFile = file_text_open_write("Save.sav");
	var SavedRoom = global.room_number;
	file_text_write_real(SaveFile,SavedRoom);
	file_text_close(SaveFile);
}
