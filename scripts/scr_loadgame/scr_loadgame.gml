//Load Saved Room
if file_exists("Save.sav")
{
	ini_open("Save.sav");
	var LoadedRoom = ini_read_real("Save1","room",room_level1);
	global.playerpoints = ini_read_real("Save1","points",0);
	ini_close();
	room_goto(LoadedRoom);

	/*
	var LoadFile = file_text_open_read("Save.sav");
	var LoadedRoom = file_text_read_real(LoadFile);
	file_text_close(LoadFile);
	room_goto(LoadedRoom);
	*/
}
else
{
	//do nothing
}
