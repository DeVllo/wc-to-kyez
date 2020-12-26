/**********************************
 *                                *
 *   @Author:      Slow_ARG       *
 *   @Version:     2.0.1          *
 *   @Date:        15/01/2016     *
 *     Thanks to Lonalchemik      *
 *                                *
 **********************************/
// Do not steal credits!

/*
Changelog Update 2.0.1:
	- Added:
			gAntiRiC (Enable/Disable Anti RCON In Chat).
			gAdminChat (Enable/Disable RCON Chat).
			Enable now has green color and Disable now has red color in the menus.
			Comprobation if the config file exists or cannot be saved.
			License system (disabled).
			Some stuff... (not listed).

	- Updated:
			Enable/Disable strings now has ternary operator.
			Some stuff... (not listed).

Changelog Update 2.0:
	- Added:
			New remote callbacks.
	
	- Updated:
			Completly new s0beit detection method.

	- Removed:
			"AntiSK_HpArmor".
			Innecesary scripts (and commented scripts).
*/

#include <a_samp>
//#include <a_http> // License System
#include <izcmd> // 0.2.2.1. Thanks to Yashas
#include <YSI\y_ini>
#include <callbacks> // Thanks to Emmet_ (Official Thread: http://forum.sa-mp.com/showthread.php?t=490436).
#include <GPDID> // 2.2

WasteDeAMXersTime() // Thanks to Mauzen
{
	new b;
	#emit load.pri b
	#emit stor.pri b
}

// ========================================== [ Defines ] ========================================== //
#define				function%0(%1)				forward%0(%1); public%0(%1)

#define				AAS_VERSION					"2.0.1"
#define				ConfigFile					"AAS/configs/configs.ini"
#define				AdminChat_Key				"#" // Default Admin Chat Key

/* Colors */
#define				COLOR_BLUED					0x1FAEE9 // 0x R G B A // 0062FF
#define				COLOR_VIOLET				0x8000FFFF // 8000FF
#define				COLOR_YELLOW				0xFFFF00FF // FFFF00
#define				COLOR_OLDRED				0xC00001FF // C00001
#define				COLOR_ORANGE				0xFFCC00FF // FFCC00
#define				COLOR_GREEN					0x00FF00FF
#define				COLOR_RED					0xFF0000FF
#define				HTML_BLUED					"{0062FF}"
#define				HTML_VIOLET					"{8000FF}"
#define				HTML_YELLOW					"{FFFF00}"
#define				HTML_OLDRED					"{C00001}"
#define				HTML_ORANGE					"{FFCC00}"
#define				HTML_RED					"{FF0000}"
#define				HTML_GREEN					"{00FF00}"

/* Dialogs */
#define				DIALOG_USERMENU_CREDITS		(24870)
#define				DIALOG_ADMINMENU			(24871)
#define				DIALOG_ADMINMENU_RCONMSG	(24872)
#define				DIALOG_ADMINMENU_CHEATERS	(24873)
#define				DIALOG_ADMINMENU_RCONADMS	(24874)
#define				DIALOG_SAMENU				(24875)
#define				DIALOG_SAMENU_PASSWORD		(24876)
#define				DIALOG_SAMENU_SADMINS		(24877)

/* Logs */
#define				RCONCHAT_LOG_FILE			"AAS/logs/rconchat.log"
#define				CHAT_LOG_FILE				"AAS/logs/chat.log"
#define				CONFIGS_LOG_FILE			"AAS/logs/configs.log"
#define				SALOGINS_LOG_FILE			"AAS/logs/sa_logins.log"
#define				SACONFIGS_LOG_FILE			"AAS/logs/sa_configs.log"
#define				CHEATERS_LOG_FILE			"AAS/logs/cheaters.log"
#define				ERROR_LOG_FILE				"AAS/logs/errors.log"

// ========================================== [ News, Structs & Other Functions ] ========================================== //
new checkTimer[MAX_PLAYERS],
	playerVehicle[MAX_PLAYERS],
	CheckPlayerForSobeit[MAX_PLAYERS],
	isCheater[MAX_PLAYERS],
	Text:textdraw0;

// Anti AFK
new AFKMessage[MAX_PLAYERS];

// Super Admin
#define SuperAdmin_Password "changeme" // Default password
new isSuperAdminLogged[MAX_PLAYERS];

// Player Struct
enum playerInfo
{
	Float:fPosX,
	Float:fPosY,
	Float:fPosZ,
	Float:fAngle,
	pVehicle,
	pVSeat,
	pVW,
	pWeapons[13],
	pAmmo[13],
};
new pInfo[MAX_PLAYERS][playerInfo];

// Server Struct
enum configs
{
	// config
	gEnabled,
	gAntiSK,
	gTextDraw,
	gAutoKick,
	gMultiCheck,
	gAntiAFK,
	gAntiPause,
	gAntiRiC,
	gAdminChat,
	// other
	gSAPassword[129], // max 128
	gAdminChatKey[2], // max 1
	gInverseRF_Admin,
	//gKey[256], // max 255
}
new gConfigs[configs];

// License System
/*enum licenseinfo
{
	errorid[2],
	status[128],
	id[11],
	key[256],
	ip[16],
	port[6],
	email[65]
};
new gLicense[licenseinfo];*/

// Remote Functions (Thanks to Lordzy).
function AAS_PlayerChecked(playerid) return CheckPlayerForSobeit[playerid];
function AAS_IsCheater(playerid) return isCheater[playerid];
function AAS_IsSuperAdminLogged(playerid) return isSuperAdminLogged[playerid];
function AAS_GetPlayerVariable(playerid, vartype) return pInfo[playerid][playerInfo:vartype];
function AAS_GetAASVariable(vartype) return gConfigs[configs:vartype];

// Inverse Remote Functions : Admin.
stock InverseGetPlayerAdminLevel(playerid)
{
	if (gConfigs[gInverseRF_Admin] == 0) return -1;
	else return CallRemoteFunction("AASi_GetPlayerAdminLevel", "i", playerid);
}

stock InverseLowestAdminLevel()
{
	if (gConfigs[gInverseRF_Admin] == 0) return -1;
	else return CallRemoteFunction("AASi_LowestAdminLevel", "i");
}

stock bool:InverseIsAllowedAdmin(playerid)
{
	if (gConfigs[gInverseRF_Admin] == 1)
	{
		if (!IsPlayerConnected(playerid)) return false;
		if (InverseGetPlayerAdminLevel(playerid) >= InverseLowestAdminLevel())
			return true;
	}
	return false;
}
//////////////////////////////////////////////////////////////////////////////////////////////////
stock IsPlayerAllowedAdmin(playerid) // Not necessary an inverse function.
{
	if (gConfigs[gInverseRF_Admin] == 1) { if (!InverseIsAllowedAdmin(playerid)) return false; }
	else { if (!IsPlayerAdmin(playerid)) return false; }
	return true;
}
/* END Inverse Remote Functions: Admin */

/* Fix Kick */
function KickPublic(playerid) { Kick(playerid); }
stock KickEx(playerid) { SetTimerEx("KickPublic", 150, 0, "d", playerid); } // 300

stock GetPlayerNameEx(playerid)
{
	new name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));
	return name;
}

stock bool:checkPlayer(playerid)
{
	if (gConfigs[gInverseRF_Admin] == 1) { if (!IsPlayerAllowedAdmin(playerid) || !IsPlayerConnected(playerid)) return false; }
	else { if (!IsPlayerAdmin(playerid) || !IsPlayerConnected(playerid)) return false; }
	return true;
}

stock SendMessageToAdmins(color, text[]) // Thanks to iJumbo & Razvann
{
	for (new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
	{
		if (IsPlayerConnected(i) && IsPlayerAllowedAdmin(i))
			SendClientMessage(i, color, text);
	}
	return true;
}

stock SendClientMessageToX(color, text[]) //const message[]
{
	for (new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
	{
		if (InverseGetPlayerAdminLevel(i) >= InverseLowestAdminLevel()) SendClientMessage(i, color, text);
		else SendClientMessage(j, color, text);
	}
	return true;
}

stock fcreate(sz_fileName[])
{
	if (fexist(sz_fileName)) return false;
	new File:fhandle = fopen(sz_fileName, io_write);
	if (fhandle)
	{
		fclose(fhandle);
		return true;
	}
	return false;
}

Log(sz_fileName[], sz_input[])
{
	new str[1024], dTime[2][3], File:fhandle;

	if (!fexist(sz_fileName)) fcreate(sz_fileName);
	else fhandle = fopen(sz_fileName, io_append);

	gettime(dTime[0][0], dTime[0][1], dTime[0][2]);
	getdate(dTime[1][0], dTime[1][1], dTime[1][2]);

	format(str, sizeof(str), "[%02d/%02d/%d - %02d:%02d:%02d] %s\r\n", dTime[1][2], dTime[1][1], dTime[1][0], dTime[0][0], dTime[0][1], dTime[0][2], sz_input);
	fwrite(fhandle, str);
	return fclose(fhandle);
}

function loadConfigs(name[], value[]) // Reverse to avoid YSI 4 problem.
{
	//INI_String("License", gConfigs[gKey], sizeof(gConfigs[gKey]));
	INI_Int("InverseRF_Admin", gConfigs[gInverseRF_Admin]);
	INI_String("AdminChatKey", gConfigs[gAdminChatKey], sizeof(gConfigs[gAdminChatKey]));
	INI_String("SAPassword", gConfigs[gSAPassword], sizeof(gConfigs[gSAPassword]));
	INI_Int("AdminChat", gConfigs[gAdminChat]);
	INI_Int("AntiRiC", gConfigs[gAntiRiC]);
	INI_Int("AntiPause", gConfigs[gAntiPause]);
	INI_Int("AntiAFK", gConfigs[gAntiAFK]);
	INI_Int("MultiCheck", gConfigs[gMultiCheck]);
	INI_Int("AutoKick", gConfigs[gAutoKick]);
	INI_Int("TextDraw", gConfigs[gTextDraw]);
	INI_Int("AntiSpawnKill", gConfigs[gAntiSK]);
	INI_Int("Enabled", gConfigs[gEnabled]);
	return 0;
}

saveConfigs()
{
	if (fexist(ConfigFile))
	{
		new INI:ini = INI_Open(ConfigFile);
		INI_SetTag(ini, "other"); // This not reverse?
		//INI_WriteString(ini, "License", gConfigs[gKey]);
		INI_WriteInt(ini, "InverseRF_Admin", gConfigs[gInverseRF_Admin]);
		INI_WriteString(ini, "AdminChatKey", gConfigs[gAdminChatKey]);
		INI_WriteString(ini, "SAPassword", gConfigs[gSAPassword]);
		INI_SetTag(ini, "config"); // This not reverse?
		INI_WriteInt(ini, "AdminChat", gConfigs[gAdminChat]);
		INI_WriteInt(ini, "AntiRiC", gConfigs[gAntiRiC]);
		INI_WriteInt(ini, "AntiPause", gConfigs[gAntiPause]);
		INI_WriteInt(ini, "AntiAFK", gConfigs[gAntiAFK]);
		INI_WriteInt(ini, "MultiCheck", gConfigs[gMultiCheck]);
		INI_WriteInt(ini, "AutoKick", gConfigs[gAutoKick]);
		INI_WriteInt(ini, "TextDraw", gConfigs[gTextDraw]);
		INI_WriteInt(ini, "AntiSpawnKill", gConfigs[gAntiSK]);
		INI_WriteInt(ini, "Enabled", gConfigs[gEnabled]);
		INI_Close(ini);
		print("\n\n[AAS] Config file saved successfully.\n\n");
	}
	else
	{
		print("\n\n[AAS] Warning: Config file cannot be saved, file does not exist, creating a new one...\n\n");
		Log(ERROR_LOG_FILE, "[AAS] Failed to save config file, file does not exist, creating a new one.");
		createConfigs();
	}
	return 1;
}

createConfigs()
{
	fcreate(ConfigFile);
	new INI:ini = INI_Open(ConfigFile);
	INI_SetTag(ini, "other"); // This not reverse?
	//INI_WriteString(ini, "License", "NULL");
	INI_WriteInt(ini, "InverseRF_Admin", 0);
	INI_WriteString(ini, "AdminChatKey", AdminChat_Key);
	INI_WriteString(ini, "SAPassword", SuperAdmin_Password);
	INI_SetTag(ini, "config"); // This not reverse?
	INI_WriteInt(ini, "AdminChat", 1);
	INI_WriteInt(ini, "AntiRiC", 1);
	INI_WriteInt(ini, "AntiPause", 1);
	INI_WriteInt(ini, "AntiAFK", 0);
	INI_WriteInt(ini, "MultiCheck", 0);
	INI_WriteInt(ini, "AutoKick", 0);
	INI_WriteInt(ini, "TextDraw", 1);
	INI_WriteInt(ini, "AntiSpawnKill", 1);
	INI_WriteInt(ini, "Enabled", 1);
	INI_Close(ini);
	if (fexist(ConfigFile))
		print("\n\n[AAS] Config file created successfully.\n\n");
	else
	{
		print("\n\n[AAS] Warning: Config file cannot be created, check if the path \"AAS/configs\" exists.\n\n");
		Log(ERROR_LOG_FILE, "[AAS] Failed to create config file, does the path \"AAS/configs\" exists?.");
	}
}

// License System
/*function MyHttpResponse(index, response_code, data[])
{
	new xml[7][2];
	if (response_code == 200)
	{
		xml[0][0] = strfind(data, "<errorid>", true);
		xml[0][1] = strfind(data, "</errorid>", true);
		xml[1][0] = strfind(data, "<status>", true);
		xml[1][1] = strfind(data, "</status>", true);
		xml[2][0] = strfind(data, "<id>", true);
		xml[2][1] = strfind(data, "</id>", true);
		xml[3][0] = strfind(data, "<key>", true);
		xml[3][1] = strfind(data, "</key>", true);
		xml[4][0] = strfind(data, "<ip>", true);
		xml[4][1] = strfind(data, "</ip>", true);
		xml[5][0] = strfind(data, "<port>", true);
		xml[5][1] = strfind(data, "</port>", true);
		xml[6][0] = strfind(data, "<email>", true);
		xml[6][1] = strfind(data, "</email", true);

		strmidex(gLicense[errorid], data, 9 + xml[0][0], xml[0][1], sizeof(gLicense[errorid]));
		strmidex(gLicense[status], data, 8 + xml[0][0], xml[0][1], sizeof(gLicense[status]));
		strmidex(gLicense[id], data, 4 + xml[0][0], xml[0][1], sizeof(gLicense[id]));
		strmidex(gLicense[key], data, 9 + xml[0][0], xml[0][1], sizeof(gLicense[key]));
		strmidex(gLicense[ip], data, 4 + xml[0][0], xml[0][1], sizeof(gLicense[ip]));
		strmidex(gLicense[port], data, 6 + xml[0][0], xml[0][1], sizeof(gLicense[port]));
		strmidex(gLicense[email], data, 7 + xml[0][0], xml[0][1], sizeof(gLicense[email]));

		//gLicense[playerid][id] = strval(data[strfind(data, "<id>", true) + 4]); // at the end.

		if (!strcmp(gLicense[errorid], "0", false, 0)) // Valid License.
			printf("=== [ Advanced Anti S0beit: License Info ] ===\n* ID: %s\n* Status: %s\n* Server IP: %s\nLicense Owner's Email: %s\n\n", gLicense[id], gLicense[status], gLicense[ip], gLicense[port], gLicense[email]);

		else if (!strcmp(gLicense[errorid], "1", false, 0)) // Complete all values.
		{
			printf("=== [ Advanced Anti S0beit: License Info ] ===\n* An error has ocurred, please contact to AAS's owner.\n* Error ID: %s\n* Closing the server...", gLicense[errorid]);
			SendRconCommand("exit");
		}
		else if (!strcmp(gLicense[errorid], "2", false, 0)) // Failed to connect to the database.
		{
			printf("=== [ Advanced Anti S0beit: License Info ] ===\n* An error has ocurred, please contact to AAS's owner.\n* Error ID: %s\n* Closing the server...", gLicense[errorid]);
			SendRconCommand("exit");
		}
		else if (!strcmp(gLicense[errorid], "3", false, 0)) // Failed to querying.
		{
			printf("=== [ Advanced Anti S0beit: License Info ] ===\n* An error has ocurred, please contact to AAS's owner.\n* Error ID: %s\n* Closing the server...", gLicense[errorid]);
			SendRconCommand("exit");
		}
		else if (!strcmp(gLicense[errorid], "4", false, 0)) // Invalid License.
		{
			printf("=== [ Advanced Anti S0beit: License Info ] ===\nYour license does not exist in our database.\n* Closing the server...", gConfigs[gKey]);
			SendRconCommand("exit");
		}
		else if (!strcmp(gLicense[errorid], "5", false, 0)) // Invalid Info.
		{
			printf("=== [ Advanced Anti S0beit: License Info ] ===\n* An error has ocurred, please contact to AAS's owner.\n* Error ID: %s\n* Closing the server...", gLicense[errorid]);
			SendRconCommand("exit");
		}
		else // ???
		{
			printf("=== [ Advanced Anti S0beit: License Info ] ===\n* An error has ocurred, please contact to AAS's owner.\n* Error ID: UNK %s\n* Closing the server...", gLicense[errorid]);
			SendRconCommand("exit");
		}
	}
	else
	{
		printf("=== [ Advanced Anti S0beit: License Info ] ===\n* There was an error during the comprobation.\n* Response Code: %d\n* Closing the server...", response_code);
		SendRconCommand("exit");
	}
	return 1;
}

stock strmidex(dest[], const src[], start, end, maxlength=sizeof dest)
{
	if (end - start > 1)
	strmid(dest, src, start, end, maxlength);
}*/

/*stock cleardata(src[])
{
	src[0] = '?';

	new c = 1;
	while(src[c] != '\0')
	{
	src[c] = '\0';
	c++;
	}
}*/

// ========================================== [ Publics ] ========================================== //
public OnFilterScriptInit()
{
	print("\n\n=== [ Advanced Anti-S0beit Loaded ] ===\n\n");

	// Logs
	fcreate(RCONCHAT_LOG_FILE);
	fcreate(CHAT_LOG_FILE);
	fcreate(CONFIGS_LOG_FILE);
	fcreate(SALOGINS_LOG_FILE);
	fcreate(SACONFIGS_LOG_FILE);
	fcreate(CHEATERS_LOG_FILE);
	fcreate(ERROR_LOG_FILE);
	
	// Configs
	if (!fexist(ConfigFile))
	{
		print("\n\n[AAS] Warning: Config file does not exist, creating a new one...\n\n");
		Log(ERROR_LOG_FILE, "[AAS] Config file does not exist, creating a new one.");
		createConfigs();
	}
	
	INI_ParseFile(ConfigFile, "loadConfigs");

	textdraw0 = TextDrawCreate(650.000000, 0.000000, " ");
	TextDrawBackgroundColor(textdraw0, 255);
	TextDrawFont(textdraw0, 1);
	TextDrawLetterSize(textdraw0, 0.010000, 30.400001);
	TextDrawColor(textdraw0, -1);
	TextDrawSetOutline(textdraw0, 0);
	TextDrawSetProportional(textdraw0, 1);
	TextDrawSetShadow(textdraw0, 1);
	TextDrawUseBox(textdraw0, 1);
	TextDrawBoxColor(textdraw0, 255);
	TextDrawTextSize(textdraw0, -17.000000, 30.000000);

	// License System
	/*new query[256];
	format(query, sizeof(query), "192.168.0.100/license.php?license=%s&port=%i", gConfigs[gKey], GetServerVarAsInt("port"));
	HTTP(0, HTTP_GET, query, "", "MyHttpResponse");*/

	WasteDeAMXersTime();
	return 1;
}

public OnFilterScriptExit()
{
	print("\n\n=== [ Advanced Anti-S0beit Closed ] ===\n\n");
	//saveConfigs();
	return 1;
}
///////////////////////////////////////////////////////////////////////////////////////////////////

public OnPlayerConnect(playerid)
{
	CheckPlayerForSobeit[playerid] = 0;
	isCheater[playerid] = 0;
	AFKMessage[playerid] = 0;
	isSuperAdminLogged[playerid] = 0;
	playerVehicle[playerid] = INVALID_VEHICLE_ID;
	pInfo[playerid][fPosX] = 0;
	pInfo[playerid][fPosY] = 0;
	pInfo[playerid][fPosZ] = 0;
	pInfo[playerid][fAngle] = 0;
	pInfo[playerid][pVehicle] = INVALID_VEHICLE_ID;
	pInfo[playerid][pVSeat] = -1;
	pInfo[playerid][pVW] = 0;
	pInfo[playerid][pWeapons] = 0;
	pInfo[playerid][pAmmo] = 0;
	KillTimer(checkTimer[playerid]);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	if (CheckPlayerForSobeit[playerid] == 0 && gConfigs[gEnabled] == 1 && !IsPlayerNPC(playerid))
	{
		AFKMessage[playerid] = 0;
		if (gConfigs[gTextDraw] == 1) TextDrawShowForPlayer(playerid, textdraw0);
		//SendClientMessage(playerid, COLOR_VIOLET, "* [AAS]: Checking s0beit, please wait.");

		// Anti S0beit
		if (IsPlayerInAnyVehicle(playerid))
		{
		GetPlayerPos(playerid, pInfo[playerid][fPosX], pInfo[playerid][fPosY], pInfo[playerid][fPosZ]);
		GetPlayerFacingAngle(playerid, pInfo[playerid][fAngle]);
		if (gConfigs[gAntiSK] == 1)
			pInfo[playerid][pVW] = GetPlayerVirtualWorld(playerid);
		pInfo[playerid][pVehicle] = GetPlayerVehicleID(playerid);
		pInfo[playerid][pVSeat] = GetPlayerVehicleSeat(playerid);
		RemovePlayerFromVehicle(playerid);

		for (new i = 0; i <= 12; i++)
			GetPlayerWeaponData(playerid, i, pInfo[playerid][pWeapons][i], pInfo[playerid][pAmmo][i]);

		}
		else
		{
			GetPlayerPos(playerid, pInfo[playerid][fPosX], pInfo[playerid][fPosY], pInfo[playerid][fPosZ]);
			GetPlayerFacingAngle(playerid, pInfo[playerid][fAngle]);
			if (gConfigs[gAntiSK] == 1)
				pInfo[playerid][pVW] = GetPlayerVirtualWorld(playerid);

			for (new i = 0; i <= 12; i++)
				GetPlayerWeaponData(playerid, i, pInfo[playerid][pWeapons][i], pInfo[playerid][pAmmo][i]);
		}
		CheckSobeit(playerid);
	}
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if (CheckPlayerForSobeit[playerid] == 0 && gConfigs[gEnabled] == 1 && gConfigs[gMultiCheck] == 1)
	{
		CheckPlayerForSobeit[playerid] = 0;
		AFKMessage[playerid] = 0;
	}
	return 1;
}

public OnPlayerText(playerid, text[])
{
	new string[500];
	// Admin Chat
	if (gConfigs[gAdminChat] == 0) return SendClientMessage(playerid, COLOR_OLDRED, "* Admin Chat was disabled by an administrator."), 0;
	if (IsPlayerAllowedAdmin(playerid) && text[0] == gConfigs[gAdminChatKey])
	{
		new str2[128];
		if (text[1] == '\0') return 1;
		format(str2, sizeof(str2), "[Admin Chat]: %s[%d]: %s", GetPlayerNameEx(playerid), playerid, text[1]);
		SendMessageToAdmins(COLOR_ORANGE, str2);
		Log(RCONCHAT_LOG_FILE, str2);
		return 0;
	}

	// Anti RCON in the chat
	if (gConfigs[gAntiRiC] == 1)
	{
		new rcon_password[64];
		GetServerVarAsString("rcon_password", rcon_password, sizeof(rcon_password));
		if (strfind(text, rcon_password, true) != -1)
		{
			//SendClientMessage(playerid, COLOR_OLDRED, "* Warning: Message blocked. Reason: You probably wrote the RCON-password in the chat.");
			SendClientMessage(playerid, COLOR_OLDRED, "* Warning: Message blocked. Reason: Your message contains ilegal characters.");
			format(string, sizeof(string), "Player '%s' probably wrote the RCON-password in the chat. Message blocked. (\"%s\").", GetPlayerNameEx(playerid), text);
			Log(CHAT_LOG_FILE, string);
			return 0;
		}

		// Anti RCON commands in the chat
		if (strfind(text, "7rcon", true) == 0 || strfind(text, " 7rcon", true) == 0 || strfind(text, " /rcon", true) == 0)
		{
			SendClientMessage(playerid, COLOR_OLDRED, "* Warning: Message blocked. Reason: You probably sent a RCON-command in the chat.");
			format(string, sizeof(string), "Player '%s' probably sent a RCON-command in the chat. Message blocked. (\"%s\").", GetPlayerNameEx(playerid), text);
			Log(CHAT_LOG_FILE, string);
			return 0;
		}

		// Anti RCON login in the chat (Not tested)
		/*if (strfind(text, "7rcon login", true) != -1)
		{
			SendClientMessage(playerid, COLOR_OLDRED, "* Warning: Message blocked. Reason: You probably sent a RCON login command in the chat.");
			format(string, sizeof(string), "Player '%s' probably sent a RCON login command in the chat. Message blocked. (\"%s\").", GetPlayerNameEx(playerid), text);
			Log(CHAT_LOG_FILE, string);
			return 0;
		}*/
	}
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if (dialogid == DIALOG_ADMINMENU)
	{
		if (!response) return 0;
		if (response)
		{
			if (!checkPlayer(playerid)) return SendClientMessage(playerid, COLOR_OLDRED, "* An error has ocurred, probably you are not an admin.");
			if (listitem == 0) // Anti SpawnKill
			{
				new string[128];
				if (gConfigs[gAntiSK] == 0)
				{
					gConfigs[gAntiSK] = 1;
					format(string, sizeof(string), "* [AAS]: 'Anti SpawnKill' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gAntiSK] = 0;
					format(string, sizeof(string), "* [AAS]: 'Anti SpawnKill' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 1) // AAS Textdraw
			{
				new string[128];
				if (gConfigs[gTextDraw] == 0)
				{
					gConfigs[gTextDraw] = 1;
					format(string, sizeof(string), "* [AAS]: 'AAS Textdraw' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gTextDraw] = 0;
					format(string, sizeof(string), "* [AAS]: 'AAS Textdraw' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 2) // Auto Kick
			{
				new string[128];
				if (gConfigs[gAutoKick] == 0)
				{
					gConfigs[gAutoKick] = 1;
					format(string, sizeof(string), "* [AAS]: 'Auto Kick' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gAutoKick] = 0;
					format(string, sizeof(string), "* [AAS]: 'Auto Kick' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 3) // Multi Check
			{
				new string[128];
				if (gConfigs[gMultiCheck] == 0)
				{
					gConfigs[gMultiCheck] = 1;
					format(string, sizeof(string), "* [AAS]: 'Multi Check' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gMultiCheck] = 0;
					format(string, sizeof(string), "* [AAS]: 'Multi Check' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(CONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 4) // Check Cheaters
			{	// Thanks to lamarr007
				new string[128], str[500], fstring[64], pCount;
				for (new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
				{
					if (isCheater[i] == 1)
					{
						format(fstring, sizeof(fstring), ""HTML_BLUED"Username\t"HTML_BLUED"ID\n"HTML_YELLOW"%s \t"HTML_BLUED"%d\n", GetPlayerNameEx(i), i);
						strcat(str, fstring, sizeof(str));
						pCount++;
					}
				}
				format(fstring, sizeof(fstring), "\n"HTML_BLUED"Count: %d", pCount);
				strcat(str, fstring, sizeof(str));
				if (pCount == 0) ShowPlayerDialog(playerid, DIALOG_ADMINMENU_CHEATERS, DIALOG_STYLE_MSGBOX, ""HTML_BLUED"AAS: List of cheaters", ""HTML_YELLOW"No cheaters connected.", "Close", "");
				else ShowPlayerDialog(playerid, DIALOG_ADMINMENU_CHEATERS, DIALOG_STYLE_TABLIST_HEADERS, ""HTML_BLUED"AAS: List of cheaters", str, "Close", "");
				format(string, sizeof(string), "* [AAS]: %s has used 'view cheaters command'.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
			}

			if (listitem == 5) // Send message to Admins
				ShowPlayerDialog(playerid, DIALOG_ADMINMENU_RCONMSG, DIALOG_STYLE_INPUT, ""HTML_BLUED"Advanced Anti-S0beit: Admin Menu", ""HTML_YELLOW"Write the message that you want send.\n\nMessage:", "Send", "Close");

			if (listitem == 6) // Check Admins
			{
				new string[128], str[500], fstring[64], pCount;
				for (new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
				{
					if (IsPlayerAllowedAdmin(i))
					{
						format(fstring, sizeof(fstring), ""HTML_BLUED"Username\t"HTML_BLUED"ID\n"HTML_YELLOW"%s \t"HTML_BLUED"%d\n", GetPlayerNameEx(i), i);
						strcat(str, fstring, sizeof(str));
						pCount++;
					}
				}
				format(fstring, sizeof(fstring), "\n"HTML_BLUED"Count: %d", pCount);
				strcat(str, fstring, sizeof(str));
				if (pCount == 0) ShowPlayerDialog(playerid, DIALOG_ADMINMENU_RCONADMS, DIALOG_STYLE_MSGBOX, ""HTML_BLUED"AAS: List of Admins", ""HTML_YELLOW"No Admins connected.", "Close", "");
				else ShowPlayerDialog(playerid, DIALOG_ADMINMENU_RCONADMS, DIALOG_STYLE_TABLIST_HEADERS, ""HTML_BLUED"AAS: List of Admins", str, "Close", "");
				format(string, sizeof(string), "* [AAS]: %s has used 'view admins command'.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
			}
			if (listitem == 7) // Super Admin Menu
			{
				if (isSuperAdminLogged[playerid] == 0) ShowPlayerDialog(playerid, DIALOG_SAMENU_PASSWORD, DIALOG_STYLE_PASSWORD, ""HTML_BLUED"Advanced Anti-S0beit: S. Admin Menu", ""HTML_YELLOW"Write the Super Admin Password.\n\nPassword:", "Verify", "Close");
				else goto isLogged;
			}
		}
		return 1;
	}

	if (dialogid == DIALOG_ADMINMENU_RCONMSG)
	{
		if (!response) return 0;
		if (response)
		{
			if (!checkPlayer(playerid)) return SendClientMessage(playerid, COLOR_OLDRED, "* An error has ocurred, probably you are not an admin.");
			if (gConfigs[gAdminChat] == 0) return SendClientMessage(playerid, COLOR_OLDRED, "* Admin Chat was disabled by an administrator.");
			if (!strlen(inputtext)) return SendClientMessage(playerid, COLOR_YELLOW, "* You cannot send an empty message.");
			new string[128];
			format(string, sizeof(string), "[Admin Chat]: %s[%d]: %s", GetPlayerNameEx(playerid), playerid, inputtext);
			SendMessageToAdmins(COLOR_ORANGE, string);
			Log(RCONCHAT_LOG_FILE, string);
		}
		return 1;
	}

	if (dialogid == DIALOG_SAMENU_PASSWORD)
	{
		if (!response) return 0;
		if (response)
		{
			if (!checkPlayer(playerid)) return SendClientMessage(playerid, COLOR_OLDRED, "* An error has ocurred, probably you are not an admin.");
			new string[256];
			if (!strcmp(inputtext, gConfigs[gSAPassword], true)) // Thanks to imftb
			{
				isSuperAdminLogged[playerid] = 1;
				format(string, sizeof(string), "* [AAS]: %s has wrote the right Super Admin Password.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
				Log(SALOGINS_LOG_FILE, string);
isLogged:
				new dstr[500];
				format(dstr, sizeof(dstr), ""HTML_BLUED"Function\t"HTML_BLUED"Status\n"HTML_YELLOW"Logout\t-\n"HTML_YELLOW"Check Super Admins\t-\n"HTML_YELLOW"AAS\t%s\n"HTML_YELLOW"Anti-AFK\t%s\n"HTML_YELLOW"Anti-Pause\t%s\n"HTML_YELLOW"Anti-RiC\t%s\n"HTML_YELLOW"Admin Chat\t%s\n"HTML_YELLOW"Save Configs\t-", (gConfigs[gEnabled] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gAntiAFK] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gAntiPause] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gAntiRiC] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gAdminChat] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"));
				ShowPlayerDialog(playerid, DIALOG_SAMENU, DIALOG_STYLE_TABLIST_HEADERS, ""HTML_BLUED"Advanced Anti-S0beit: S. Admin Menu", dstr, "Select", "Close");
			}
			else
			{
				isSuperAdminLogged[playerid] = 0;
				format(string, sizeof(string), "* [AAS]: %s has wrote a wrong Super Admin Password.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
				format(string, sizeof(string), "[AAS] %s has wrote the a Super Admin Password. (\"%s\").", GetPlayerNameEx(playerid), inputtext);
				Log(SALOGINS_LOG_FILE, string);
			}
		}
		return 1;
	}

	if (dialogid == DIALOG_SAMENU)
	{
		if (!response) return 0;
		if (response)
		{
			if (!checkPlayer(playerid)) return SendClientMessage(playerid, COLOR_OLDRED, "* An error has ocurred, probably you are not an admin.");
			if (listitem == 0) // Logout
			{
				isSuperAdminLogged[playerid] = 0;
				new string[128];
				format(string, sizeof(string), "* [AAS]: %s was disconnected from Super Admin Menu.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
			}

			if (listitem == 1) // Check Super Admins
			{
				new string[128], str[500], fstring[64], pCount;
				for (new i = 0, j = GetPlayerPoolSize(); i <= j; i++)
				{
					if (isSuperAdminLogged[i] == 1)
					{
						format(fstring, sizeof(fstring), ""HTML_BLUED"Username\t"HTML_BLUED"ID\n"HTML_YELLOW"%s \t"HTML_BLUED"%d\n", GetPlayerNameEx(i), i);
						strcat(str, fstring, sizeof(str));
						pCount++;
					}
				}
				format(fstring, sizeof(fstring), "\n"HTML_BLUED"Count: %d", pCount);
				strcat(str, fstring, sizeof(str));
				if (pCount == 0) ShowPlayerDialog(playerid, DIALOG_SAMENU_SADMINS, DIALOG_STYLE_MSGBOX, ""HTML_BLUED"AAS: List of Super Admins", ""HTML_YELLOW"No Super Admins connected.", "Close", "");
				else ShowPlayerDialog(playerid, DIALOG_SAMENU_SADMINS, DIALOG_STYLE_TABLIST_HEADERS, ""HTML_BLUED"AAS: List of Super Admins", str, "Close", "");
				format(string, sizeof(string), "* [AAS]: %s has used 'view super admins command'.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
			}

			if (listitem == 2) // Enable/Disable AAS
			{
				new string[128];
				if (gConfigs[gEnabled] == 0)
				{
					gConfigs[gEnabled] = 1;
					format(string, sizeof(string), "* [AAS]: 'Advanced Anti-S0beit' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gEnabled] = 0;
					format(string, sizeof(string), "* [AAS]: 'Advanced Anti-S0beit' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 3) // Enable/Disable Anti-AFK
			{
				new string[128];
				if (gConfigs[gAntiAFK] == 0)
				{
					gConfigs[gAntiAFK] = 1;
					format(string, sizeof(string), "* [AAS]: 'Anti-AFK' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gAntiAFK] = 0;
					format(string, sizeof(string), "* [AAS]: 'Anti-AFK' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 4) // Enable/Disable Anti-Pause
			{
				new string[128];
				if (gConfigs[gAntiPause] == 0)
				{
					gConfigs[gAntiPause] = 1;
					format(string, sizeof(string), "* [AAS]: 'Anti-Pause' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gAntiPause] = 0;
					format(string, sizeof(string), "* [AAS]: 'Anti-Pause' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
			}
			
			if (listitem == 5) // Enable/Disable Anti-RiC
			{
				new string[128];
				if (gConfigs[gAntiRiC] == 0)
				{
					gConfigs[gAntiRiC] = 1;
					format(string, sizeof(string), "* [AAS]: 'Anti-RiC' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gAntiRiC] = 0;
					format(string, sizeof(string), "* [AAS]: 'Anti-RiC' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
			}
			
			if (listitem == 6) // Enable/Disable Admin Chat
			{
				new string[128];
				if (gConfigs[gAdminChat] == 0)
				{
					gConfigs[gAdminChat] = 1;
					format(string, sizeof(string), "* [AAS]: 'Admin Chat' has been enabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
				else
				{
					gConfigs[gAdminChat] = 0;
					format(string, sizeof(string), "* [AAS]: 'Admin Chat' has been disabled by %s.", GetPlayerNameEx(playerid));
					SendMessageToAdmins(COLOR_VIOLET, string);
					Log(SACONFIGS_LOG_FILE, string);
				}
			}

			if (listitem == 7) // Save Configs
			{
				new string[128];
				saveConfigs();
				format(string, sizeof(string), "* [AAS]: All configs has been saved by %s.", GetPlayerNameEx(playerid));
				SendMessageToAdmins(COLOR_VIOLET, string);
				Log(SACONFIGS_LOG_FILE, string);
			}
		}
		return 1;
	}
	return 0;
}

// ========================================== [ Functions ] ========================================== //
CheckIfPlayerIsAFK(playerid)
{
	if (CheckPlayerForSobeit[playerid] == 0 && gConfigs[gEnabled] == 1 && gConfigs[gAntiPause] == 1)
	{
		if (NetStats_MessagesRecvPerSecond(playerid) == 1 || NetStats_MessagesRecvPerSecond(playerid) == 0)
		{
			new str[128];
			if (AFKMessage[playerid] == 0)
			{
				format(str, sizeof(str), "* [AAS]: %s has been kicked, reason: AFK during comprobation.", GetPlayerNameEx(playerid));
				SendClientMessageToX(COLOR_OLDRED, str);
				AFKMessage[playerid] = 1;
			}
			KickEx(playerid);
		}
	}
	return 1;
}

public OnPlayerPause(playerid)
{
	if (CheckPlayerForSobeit[playerid] == 0 && gConfigs[gEnabled] == 1 && gConfigs[gAntiPause] == 1)
	{
		new str[128];
		if (AFKMessage[playerid] == 0)
		{
			format(str, sizeof(str), "* [AAS]: %s has been kicked, reason: Paused during comprobation.", GetPlayerNameEx(playerid));
			SendClientMessageToX(COLOR_OLDRED, str);
			AFKMessage[playerid] = 1;
		}
		KickEx(playerid);
	}
	return 1;
}

// Anti S0beit
function AntiSobeit(playerid)
{
	if (CheckPlayerForSobeit[playerid] == 0)
	{
		CheckIfPlayerIsAFK(playerid);
		new weapons[2], string[128], name[MAX_PLAYER_NAME];
		GetPlayerName(playerid, name, sizeof(name));
		GetPlayerWeaponData(playerid, 1, weapons[0], weapons[1]);
		if (weapons[0] == WEAPON_GOLFCLUB)
		{
			isCheater[playerid] = 1;
			if (gConfigs[gAutoKick] == 1)
				format(string, sizeof(string), "* [AAS]: %s has been detected with m0d s0beit, he/she has been auto kicked.", GetPlayerNameEx(playerid));
			else
				format(string, sizeof(string), "* [AAS]: %s has been detected with m0d s0beit.", GetPlayerNameEx(playerid));
			SendClientMessageToX(COLOR_OLDRED, string);
			Log(CHEATERS_LOG_FILE, string);
			if (gConfigs[gTextDraw] == 1) TextDrawHideForPlayer(playerid, textdraw0);
			if (gConfigs[gAutoKick] == 1) KickEx(playerid);
		}
		else
		{
			isCheater[playerid] = 0;
			format(string, sizeof(string), "* [AAS]: %s does not have m0d s0beit, he is allowed to join.", GetPlayerNameEx(playerid));
			SendClientMessageToX(COLOR_OLDRED, string);
			Log(CHEATERS_LOG_FILE, string);
			if (gConfigs[gTextDraw] == 1) TextDrawHideForPlayer(playerid, textdraw0);
			//if (gConfigs[gAntiSK] == 1) {}
		}
		CheckPlayerForSobeit[playerid] = 1;
		if (IsPlayerInAnyVehicle(playerid))
		{
			if (gConfigs[gAntiSK] == 1)
				SetPlayerVirtualWorld(playerid, pInfo[playerid][pVW]);
			//SetPlayerPos(playerid, pInfo[playerid][fPosX], pInfo[playerid][fPosY], pInfo[playerid][fPosZ]);
			//SetPlayerFacingAngle(playerid, pInfo[playerid][fAngle]);
			PutPlayerInVehicle(playerid, pInfo[playerid][pVehicle], pInfo[playerid][pVSeat]);
			ResetPlayerWeapons(playerid);
			for (new i = 0; i <= 12; i++)
				GivePlayerWeapon(playerid, pInfo[playerid][pWeapons][i], pInfo[playerid][pAmmo][i]);
		}
		else
		{
			if (gConfigs[gAntiSK] == 1)
				SetPlayerVirtualWorld(playerid, pInfo[playerid][pVW]);
			SetPlayerPos(playerid, pInfo[playerid][fPosX], pInfo[playerid][fPosY], pInfo[playerid][fPosZ]);
			SetPlayerFacingAngle(playerid, pInfo[playerid][fAngle]);
			ResetPlayerWeapons(playerid);
			for (new i = 0; i <= 12; i++)
				GivePlayerWeapon(playerid, pInfo[playerid][pWeapons][i], pInfo[playerid][pAmmo][i]);
		}
	}
	return 1;
}

// Anti S0beit
stock CheckSobeit(playerid)
{
	CheckIfPlayerIsAFK(playerid);
	if (CheckPlayerForSobeit[playerid] == 0)
	{
		if (gConfigs[gAntiSK] == 1)
			SetPlayerVirtualWorld(playerid, 0x6F330000 + playerid);
		ResetPlayerWeapons(playerid);
		playerVehicle[playerid] = CreateVehicle(457, 2109.1763, 1503.0453, 32.2887, 82.2873, 0, 0, -1);
		if (gConfigs[gAntiSK] == 1)
			SetVehicleVirtualWorld(playerVehicle[playerid], 0x6F330000 + playerid);
		PutPlayerInVehicle(playerid, playerVehicle[playerid], 0);
		RemovePlayerFromVehicle(playerid);
		DestroyVehicle(playerVehicle[playerid]);
		SetPlayerPos(playerid, 0.0, 0.0, 10000.0);
		checkTimer[playerid] = SetTimerEx("AntiSobeit", 1000, false, "i", playerid);
	}
}

// ========================================== [ Commands ] ========================================== //
// Admin commands
CMD:aas(playerid, params[])
{
	if (!checkPlayer(playerid)) return SendClientMessage(playerid, COLOR_OLDRED, "* You are not allowed to use this command.");
	new dstr[500];
	format(dstr, sizeof(dstr), ""HTML_BLUED"Function\t"HTML_BLUED"Status\n"HTML_YELLOW"Anti SpawnKill\t%s\n"HTML_YELLOW"AAS Textdraw\t%s\n"HTML_YELLOW"Auto Kick\t%s\n"HTML_YELLOW"Multi Check\t%s\n"HTML_YELLOW"Check Cheaters\t-\n"HTML_YELLOW"Send message to Admins\t-\n"HTML_YELLOW"Check Admins\t-\n"HTML_YELLOW"Super Admin Menu\t-\n", (gConfigs[gAntiSK] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gTextDraw] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gAutoKick] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"), (gConfigs[gMultiCheck] == 0) ? (""HTML_RED"Disabled") : (""HTML_GREEN"Enabled"));
	ShowPlayerDialog(playerid, DIALOG_ADMINMENU, DIALOG_STYLE_TABLIST_HEADERS, ""HTML_BLUED"Advanced Anti-S0beit: Admin Menu", dstr, "Select", "Close");
	return 1;
}

// User commands
CMD:aasc(playerid, params[])
{
	new dstr[500];
	format(dstr, sizeof(dstr), "{00FF00}Current \"AAS\" version: %s.\n\n"HTML_YELLOW"Scripters: {FFFFFF}Slow_ARG, Right.\n\n"HTML_YELLOW"Thanks to: {FFFFFF}Lonalchemik, Mauzen, iJumbo, Razvann, lamarr007, LuiisRubio, \n\timftb, adri1, alex15, Y_Less, Zeex, Lordzy, \n\tEmmet_, wups, Yashas, Misiur, ipsNan, DabvAstur.", AAS_VERSION);
	ShowPlayerDialog(playerid, DIALOG_USERMENU_CREDITS, DIALOG_STYLE_MSGBOX, ""HTML_BLUED"Advanced Anti-S0beit: Credits", dstr, "Close", "");
	return 1;
}

// ========================================== [ EOF ] ========================================== //
