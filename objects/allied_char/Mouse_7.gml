/// @description show menu

if !show_menu
{
	with allied_char
		show_menu=false; //turn off for everyone else
	show_menu=true;
	menu_timeout=timeout_max;
}