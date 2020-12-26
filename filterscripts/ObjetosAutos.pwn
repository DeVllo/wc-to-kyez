/**********************************************************/
/* iVO: Vehicle Object Creator Tool - by © iPLEOMAX, 2011 */
/* > You have no right to redistribute or claim yours     */
/*   without my permission.                               */
/* > Contact: sa-mp user: 'iPLEOMAX' for any requests     */
/*   related to this FilterScript.                        */
/* > Do not remove any credits in this script!            */
/**********************************************************/

#include <a_samp>
#include <zcmd>
#include <sscanf2>

#define DIALOG_VODIAL 718

#define DRAWDISTANCE_DEFAULT 		80
#define SPEEDMULTIPLIER_HIGH        0.20
#define SPEEDMULTIPLIER_LOW         0.01

#define MODE_NONE           0
#define MODE_PX 			1
#define MODE_PY    			2
#define MODE_PZ             3
#define MODE_RX             4
#define MODE_RY             5
#define MODE_RZ             6

enum ATTACH_DATA
{
	Temp,
	bool:Saved,
	Timer,
	bool:Enabled,
	Mode,
	ModelID,
	ObjectID,
	VehicleID,
	Float:P[3],
	Float:R[3]
};
new VODATA[MAX_PLAYERS][ATTACH_DATA];

public OnFilterScriptInit()
{
	print("\n  iVO (Vehicle Object Attaching FS - Loaded)");
	print("  by iPLEOMAX, 2011\n");
	return 1;
}

public OnFilterScriptExit()
{
	for(new i=0; i<MAX_PLAYERS; i++) { KillTimer(VODATA[i][Timer]); }
	print("\n  iVO (Vehicle Object Attaching FS - EXITED)\n");
	return 1;
}

public OnPlayerConnect(playerid)
{
    VODATA[playerid][Saved] = true;
	return true;
}

public OnPlayerDisconnect(playerid, reason)
{
	KillTimer(VODATA[playerid][Timer]);
	VODATA[playerid][Mode] = MODE_NONE;
    VODATA[playerid][Temp] = 0;
    VODATA[playerid][ModelID] = 0;
    VODATA[playerid][ObjectID] = 0;
    VODATA[playerid][VehicleID] = 0;
    VODATA[playerid][Enabled] = false;
    for(new i=0; i<3; i++) { VODATA[playerid][P][i] = 0.0; VODATA[playerid][R][i] = 0.0;}
	return true;
}

CMD:vattach(playerid, params[])
{
    new modelid;
	if( sscanf(params, "i", modelid) ) return SendClientMessage(playerid, 0xFF0000FF, "[iVO] Use /VAttach [ MODEL ID ]");

    if( !VODATA[playerid][Saved] ) {
		ShowPlayerDialog(playerid, DIALOG_VODIAL, DIALOG_STYLE_MSGBOX, "iVO - iPLEOMAX", "You did not save your current work.\nAre you sure you want to attach another object?", "New", "Save");
		VODATA[playerid][Temp] = modelid;
		return true;
	}
	if( !IsPlayerInAnyVehicle(playerid) ) return SendClientMessage(playerid, 0xFF0000FF, "[iVO] You are not in any vehicle.");
	iVO_Create(playerid, modelid);
	return true;
}

forward iVO_Create(playerid, modelid);
public iVO_Create(playerid, modelid)
{
    VODATA[playerid][Timer] = SetTimerEx("OnPlayerUpdateEx", 50, true, "d", playerid);

    VODATA[playerid][Mode] = MODE_NONE;
    VODATA[playerid][Temp] = 0;
    VODATA[playerid][VehicleID] = 0;
    for(new i=0; i<3; i++) { VODATA[playerid][P][i] = 0.0; VODATA[playerid][R][i] = 0.0;}

    VODATA[playerid][Enabled] = true;
	VODATA[playerid][ModelID] = modelid;
	VODATA[playerid][ObjectID] = CreateObject(VODATA[playerid][ModelID], 0, 0, -1000, 0, 0, 0, DRAWDISTANCE_DEFAULT);
	VODATA[playerid][VehicleID] = GetPlayerVehicleID(playerid);
	AttachObjectToVehicle(VODATA[playerid][ObjectID], VODATA[playerid][VehicleID], 0, 0, 0, 0, 0, 0);

	new message[64];
	format(message, sizeof(message), "[iVO] Object with Model ID [%i] is attached to your vehicle.", modelid);
 	SendClientMessage(playerid, 0x00FF00FF, message);
 	VODATA[playerid][Saved] = false;
 	cmd_vohelp(playerid, "_");
	return true;
}

CMD:vohelp(playerid, params[])
{
    SendClientMessage(playerid, 0x00FF00FF, "[iVO] Use /PX for changing X position offset, /OX for X rotation.");
	SendClientMessage(playerid, 0x00FF00FF, "[iVO] Use /PY for changing Y position offset, /OY for Y rotation.");
	SendClientMessage(playerid, 0x00FF00FF, "[iVO] Use /PZ for changing Z position offset, /OZ for Z rotation.");
	SendClientMessage(playerid, 0x00FF00FF, "[iVO] And LEFT, RIGHT keys to change the value of offset.");
	SendClientMessage(playerid, 0x00FF00FF, "[iVO] When you complete editing, use /VSave to create a pawn code in filterscripts directory.");
	return true;
}

CMD:px(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] Please Use /VAttach First."); }
    else { VODATA[playerid][Mode] = MODE_PX; SendClientMessage(playerid, -1, "[iVO] You are changing the X Offset now."); }
	return true;
}
CMD:py(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] Please Use /VAttach First."); }
    else { VODATA[playerid][Mode] = MODE_PY; SendClientMessage(playerid, -1, "[iVO] You are changing the Y Offset now."); }
	return true;
}
CMD:pz(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] Please Use /VAttach First."); }
    else { VODATA[playerid][Mode] = MODE_PZ; SendClientMessage(playerid, -1, "[iVO] You are changing the Z Offset now."); }
	return true;
}
CMD:rx(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] Please Use /VAttach First."); }
    else { VODATA[playerid][Mode] = MODE_RX; SendClientMessage(playerid, -1, "[iVO] You are changing the X Rotation now."); }
	return true;
}
CMD:ry(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] Please Use /VAttach First."); }
    else { VODATA[playerid][Mode] = MODE_RY; SendClientMessage(playerid, -1, "[iVO] You are changing the Y Rotation now."); }
	return true;
}
CMD:rz(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] Please Use /VAttach First."); }
    else { VODATA[playerid][Mode] = MODE_RZ; SendClientMessage(playerid, -1, "[iVO] You are changing the Z Rotation now."); }
	return true;
}
CMD:vend(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) { SendClientMessage(playerid, 0xFF0000FF, "[iVO] There is no on-going edit of Vehicle Object."); }
    else { VODATA[playerid][Mode] = MODE_NONE; SendClientMessage(playerid, 0xFF00FFFF, "[iVO] Editing Stopped, You may use /VSave now."); KillTimer(VODATA[playerid][Timer]); }
    return true;
}

forward OnPlayerUpdateEx(playerid);
public OnPlayerUpdateEx(playerid)
{
	if(VODATA[playerid][Mode] == MODE_NONE) return true;

    new KEYS, UD, LR; GetPlayerKeys( playerid, KEYS, UD, LR );

	new Float:SPDM = 0.1;

	if(KEYS == 128) { SPDM = SPEEDMULTIPLIER_HIGH; }
	else if (KEYS == 4) { SPDM = SPEEDMULTIPLIER_LOW; }

    if(LR > 0) { UpdateVObject(playerid, SPDM); }
	else if(LR < 0) { UpdateVObject(playerid, -SPDM); }
    return 1;
}

forward UpdateVObject(playerid, Float:value);
public UpdateVObject(playerid, Float:value)
{
	DestroyObject(VODATA[playerid][ObjectID]);
	VODATA[playerid][ObjectID] = CreateObject(VODATA[playerid][ModelID], 0, 0, 6, 0, 0, 0, DRAWDISTANCE_DEFAULT);

	switch(VODATA[playerid][Mode])
	{
	    case MODE_PX: {
	        VODATA[playerid][P][0] += value;
	        new string[64];
	        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~Offset X: ~g~%f",VODATA[playerid][P][0]);
	        GameTextForPlayer(playerid, string, 10000, 3);
		}
		case MODE_PY: {
		    VODATA[playerid][P][1] += value;
	        new string[64];
	        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~Offset Y: ~g~%f",VODATA[playerid][P][1]);
	        GameTextForPlayer(playerid, string, 10000, 3);
		}
		case MODE_PZ: {
		    VODATA[playerid][P][2] += value;
	        new string[64];
	        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~Offset Z: ~g~%f",VODATA[playerid][P][1]);
	        GameTextForPlayer(playerid, string, 10000, 3);
		}
		case MODE_RX: {
	        if(VODATA[playerid][R][0] + value*10 <= 360.0 && VODATA[playerid][R][0] + value*10 >= 0.0) { VODATA[playerid][R][0] += value*10; }
	        new string[64];
	        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~Rotation X: ~g~%f",VODATA[playerid][P][0]);
	        GameTextForPlayer(playerid, string, 10000, 3);
		}
		case MODE_RY: {
		    if(VODATA[playerid][R][1] + value*10 <= 360.0 && VODATA[playerid][R][1] + value*10 >= 0.0) { VODATA[playerid][R][1] += value*10; }
	        new string[64];
	        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~Rotation Y: ~g~%f",VODATA[playerid][R][1]);
	        GameTextForPlayer(playerid, string, 10000, 3);
		}
		case MODE_RZ: {
		    if(VODATA[playerid][R][2] + value*10 <= 360.0 && VODATA[playerid][R][2] + value*10 >= 0.0) { VODATA[playerid][R][2] += value*10; }
	        new string[64];
	        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~Rotation Z: ~g~%f",VODATA[playerid][R][2]);
	        GameTextForPlayer(playerid, string, 10000, 3);
		}
	}
	AttachObjectToVehicle(VODATA[playerid][ObjectID], VODATA[playerid][VehicleID], VODATA[playerid][P][0], VODATA[playerid][P][1], VODATA[playerid][P][2], VODATA[playerid][R][0], VODATA[playerid][R][1], VODATA[playerid][R][2]);
	return true;
}

CMD:vsave(playerid, params[])
{
    if(!VODATA[playerid][Enabled]) return SendClientMessage(playerid, 0xFF0000FF, "[iVO] There is no on-going edit of Vehicle Object.");

	new filename[] = "/AttachObjectToVehicle_iVO.pwn";
	if(!fexist(filename)) {
		new File:ivo = fopen(filename, io_write);
		fwrite(ivo, "//Your created codes:");
		fclose(ivo);
	}
	new comment[64], codeline[256];
	if(sscanf(params, "s[64]", comment)) { comment = "iVO";  SendClientMessage(playerid, 0x00FF00FF, "[iVO] You can also use /save [comment]."); }

	new File:ivo = fopen(filename, io_append);
	format(codeline, sizeof(codeline), "\r\n\r\nnew object = CreateObject( %i,0,0,0,0,0,0,80 ); // <%s>",VODATA[playerid][ModelID], comment);
	fwrite(ivo, codeline);
	format(codeline, sizeof(codeline), "\r\nAttachObjectToVehicle( object, GetPlayerVehicleID(playerid), %f, %f, %f, %f, %f, %f ); // <%s>",
	                                    VODATA[playerid][P][0],
	                                    VODATA[playerid][P][1],
	                                    VODATA[playerid][P][2],
	                                    VODATA[playerid][R][0],
	                                    VODATA[playerid][R][1],
	                                    VODATA[playerid][R][2],
	                                    comment);
	fwrite(ivo, codeline);
	fclose(ivo);
	SendClientMessage(playerid, 0x00FF00FF, "Success! Your vehicle object is saved. (AttachObjectToVehicle_iVO.pwn)");
	VODATA[playerid][Saved] = true;
	KillTimer(VODATA[playerid][Timer]);
	return true;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == DIALOG_VODIAL)
	{
	    if(!response) return cmd_vsave(playerid, "iVO");
	    iVO_Create(playerid, VODATA[playerid][Temp]);
	}
	return true;
}
