/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C742425
/// @DnDArgument : "code" "menu_x += (menu_x_target - menu_x) / menu_speed;$(13_10)$(13_10)//keyboard controls$(13_10)if (menu_control)$(13_10){$(13_10)	if (keyboard_check_pressed(vk_up))$(13_10)	{$(13_10)		menu_cursor++;$(13_10)		if (menu_cursor >= menu_items) menu_cursor = 0;$(13_10)	}$(13_10)	if (keyboard_check_pressed(vk_down))$(13_10)	{$(13_10)		menu_cursor--;$(13_10)		if (menu_cursor < 0) menu_cursor = menu_items-1;$(13_10)	}$(13_10)	if (keyboard_check_pressed(vk_enter))$(13_10)	{$(13_10)		menu_x_target = gui_width + 200$(13_10)		menu_committed = menu_cursor;$(13_10)		shakescreen(4,30);$(13_10)		menu_control = false;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (menu_x > gui_width+150) && (menu_committed != -1)$(13_10){$(13_10)	switch (menu_committed)$(13_10)	{$(13_10)		case 2: Transitions(TRANS_MODE.NEXT); break;$(13_10)		case 1: $(13_10)		{$(13_10)			if (!file_exists(SAVEFILE))$(13_10)			{$(13_10)				Transitions(TRANS_MODE.NEXT);$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				var file = file_text_open_read(SAVEFILE);$(13_10)				var target = file_text_read_real(file);$(13_10)				file_text_close(file);$(13_10)				Transitions(TRANS_MODE.GOTO,target);$(13_10)			}$(13_10)		}$(13_10)		break;$(13_10)		case 0: game_end(); break;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)"
menu_x += (menu_x_target - menu_x) / menu_speed;

//keyboard controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width + 200
		menu_committed = menu_cursor;
		shakescreen(4,30);
		menu_control = false;
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: Transitions(TRANS_MODE.NEXT); break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				Transitions(TRANS_MODE.NEXT);
			}
			else
			{
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				Transitions(TRANS_MODE.GOTO,target);
			}
		}
		break;
		case 0: game_end(); break;
	}
}