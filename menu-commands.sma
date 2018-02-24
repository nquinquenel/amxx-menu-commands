#include <amxmodx>

#define PLUGIN "Basic command menu"
#define VERSION "0.1"
#define AUTHOR "lopoto"


public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR);
	register_clcmd("say /testmenu", "menu_command");
}

public menu_command(id) {
	new menu = menu_create("\rTest menu:", "menu_handler");
	
	menu_additem(menu, "\wTest 1", "", 0);
	menu_additem(menu, "\wTest 2", "", 0);
	
	menu_setprop(menu, MPROP_EXIT, MEXIT_ALL);
	
	menu_display(id, menu, 0);
}

public menu_handler(id, menu, item) {
	switch(item) {
		case 0: {
			client_print(id, print_chat, "Test 1 worked.");
		}
		case 1: {
			client_print(id, print_chat, "Test 2 worked.");
		}
		case MENU_EXIT: {
			client_print(id, print_chat, "Exit.");
		}
	}
	
	menu_destroy(menu);
	return PLUGIN_HANDLED;
}
/* AMXX-Studio Notes - DO NOT MODIFY BELOW HERE
*{\\ rtf1\\ ansi\\ ansicpg1252\\ deff0\\ deflang1036{\\ fonttbl{\\ f0\\ fnil Tahoma;}}\n\\ viewkind4\\ uc1\\ pard\\ f0\\ fs16 \n\\ par }
*/
