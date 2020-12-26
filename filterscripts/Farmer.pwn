/* Farming System by Lucky13

Important Note: I didn't make the aftermath when you leave one of the vehicles during this job!!! Didn't had enough time
for this as I'm currently working on a HUGE project. Feel free to PM me anytime about it.

*/
#define FILTERSCRIPT

#include <a_samp>
#include <zcmd>

// Trailer possition
#define TrailerPosition -77.9945,97.1221,3.1172

// The checkpoints
#define CP1 -102.5755,149.1160,1.1369
#define CP2 -105.0064,140.8230,1.1144
#define CP3 -107.5884,133.1004,1.1172
#define CP4 -109.2171,126.4931,1.1172
#define CP5 -111.9232,117.9299,1.1172
#define CP6 -115.0076,109.8861,1.1172
#define CP7 -116.5271,103.9562,1.1172
#define CP8 -118.9859,96.6177,1.1172



#define wheattimer 5000

new FarmerJob[MAX_PLAYERS];
new wheats[8];// Make sure you change this 8 when you add more than 8 checkpoints

new trailer;
new combine;
new tractor;

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
    tractor = AddStaticVehicle(531,-80.0141,90.5957,3.0812,72.4554,36,2); // Tractor
	combine = AddStaticVehicle(532,-85.7022,65.3932,4.0856,72.0895,0,0); // Combine
	trailer = AddStaticVehicle(610,TrailerPosition,72.0895,0,0); // Trailer

	return 1;
}

public OnPlayerConnect(playerid)
{
	FarmerJob[playerid]=0;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    if(FarmerJob[playerid] != 0)
	{
		FarmerJob[playerid]=0;
		DisablePlayerCheckpoint(playerid);
		SetVehicleParamsForPlayer(combine,playerid,0,0);
		for(new i;i<sizeof(wheats);i++)
		{
			DestroyObject(wheats[i]);
		}
  	}
	return 1;
}

COMMAND:attach(playerid,params[])
{
	if(IsPlayerInAnyVehicle(playerid))
	{
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531)
		{
			if(IsPlayerInRangeOfPoint(playerid,3.0,TrailerPosition))
			{
				AttachTrailerToVehicle(trailer,GetPlayerVehicleID(playerid));
				SetPlayerCheckpoint(playerid,CP1+2.0,3.0);
				FarmerJob[playerid]=1;
				SendClientMessage(playerid,-1,"Drive the Tractor with the trailer in every {FF0000}checkpoint{FFFFFF}.");
		  	}
			else { SendClientMessage(playerid,-1,"Be near the trailer"); }
		}
		else { SendClientMessage(playerid,-1,"You must be in a tractor"); }
	}
	else { SendClientMessage(playerid,-1,"You must be in a tractor"); }
	return 1;
}
public OnPlayerEnterCheckpoint(playerid)
{
	new Float: X, Float: Y, Float: Z;
	new Float: oX, Float: oY, Float: oZ;
	if(FarmerJob[playerid] == 1)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP2,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 2)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP3,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 3)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP4,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 4)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP5,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 5)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP6,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 6)
	{
		if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP7,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 7)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
			DisablePlayerCheckpoint(playerid);
			SetPlayerCheckpoint(playerid,CP8,3.0);
			FarmerJob[playerid]++;
		}
	}
	else if(FarmerJob[playerid] == 8)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 531 && IsTrailerAttachedToVehicle(GetPlayerVehicleID(playerid)))
		{
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			SetTimerEx("WheatTime",wheattimer,0,"i",playerid);
			SetVehicleParamsForPlayer(combine,playerid,1,0);
			SendClientMessage(playerid,-1,"Get in the {FCE00D}Combine Harvester {FFFFFF}and wait for the wheat to grow.");
		}
	}
	// This is where the wheat starts and the default checkpoints ( 8 checkpoints ) end.
	else if(FarmerJob[playerid] == 9)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
	    	GetPlayerPos(playerid,X,Y,Z);
	    	DisablePlayerCheckpoint(playerid);
	    	FarmerJob[playerid]++;
	    	SetPlayerCheckpoint(playerid,CP2+2,6.0);
	    	DestroyObject(wheats[0]);
	    	wheats[0] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[0],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
	    }
	}
	else if(FarmerJob[playerid] == 10)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
	    	GetPlayerPos(playerid,X,Y,Z);
	    	DisablePlayerCheckpoint(playerid);
	    	FarmerJob[playerid]++;
	    	SetPlayerCheckpoint(playerid,CP3+2,6.0);
	    	DestroyObject(wheats[1]);
	    	wheats[1] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[1],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
		}
	}
	else if(FarmerJob[playerid] == 11)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
	    	GetPlayerPos(playerid,X,Y,Z);
	    	DisablePlayerCheckpoint(playerid);
	    	FarmerJob[playerid]++;
	    	SetPlayerCheckpoint(playerid,CP4+2,6.0);
	    	DestroyObject(wheats[2]);
	    	wheats[2] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[2],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
		}
	}
	else if(FarmerJob[playerid] == 12)
	{
	    GetPlayerPos(playerid,X,Y,Z);
	    DisablePlayerCheckpoint(playerid);
	    FarmerJob[playerid]++;
	    SetPlayerCheckpoint(playerid,CP5+2,6.0);
	    DestroyObject(wheats[3]);
	    wheats[3] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    MoveObject(wheats[3],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
	}
	else if(FarmerJob[playerid] == 13)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
	    	GetPlayerPos(playerid,X,Y,Z);
	   	 	DisablePlayerCheckpoint(playerid);
	   	 	FarmerJob[playerid]++;
	    	SetPlayerCheckpoint(playerid,CP6+2,6.0);
	    	DestroyObject(wheats[4]);
	    	wheats[4] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[4],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
		}
	}
	else if(FarmerJob[playerid] == 14)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
	    	GetPlayerPos(playerid,X,Y,Z);
	    	DisablePlayerCheckpoint(playerid);
	    	FarmerJob[playerid]++;
	    	SetPlayerCheckpoint(playerid,CP7+2,6.0);
	    	DestroyObject(wheats[5]);
	    	wheats[5] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[5],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
		}
	}
	else if(FarmerJob[playerid] == 15)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
	   		GetPlayerPos(playerid,X,Y,Z);
	    	DisablePlayerCheckpoint(playerid);
	    	FarmerJob[playerid]++;
	    	SetPlayerCheckpoint(playerid,CP8+2,6.0);
	    	DestroyObject(wheats[6]);
	    	wheats[6] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[6],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
		}
	}
	else if(FarmerJob[playerid] == 16)
	{
	    if(GetVehicleModel(GetPlayerVehicleID(playerid)) == 532)
		{
		    DisablePlayerCheckpoint(playerid);
	    	GetPlayerPos(playerid,X,Y,Z);
	    	GetObjectPos(wheats[0],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
	    	FarmerJob[playerid]++;
	    	DestroyObject(wheats[7]);
	    	wheats[7] = CreateObject(2901,X,Y+3.0,Z,0.0,0.0,0.0,0.0);
	    	MoveObject(wheats[7],X,Y,Z-1.7,2.0,0.0,0.0,0.0);
	    	SendClientMessage(playerid,-1,"Pickup the {FF0000}Wheat{FFFFFF}.");
		}
	}
	else if(FarmerJob[playerid] == 17)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[0]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[1],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 18)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[1]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[2],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 19)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[2]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[3],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 20)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[3]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[4],oX,oY,oZ);
	   	 	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 21)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[4]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[5],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 22)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[5]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[6],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 23)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]++;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[6]);
	    	ApplyAnimation(playerid,"MISC","pickup_box",4.1,0,0,0,0,0,1);
	    	GetObjectPos(wheats[7],oX,oY,oZ);
	    	SetPlayerCheckpoint(playerid,oX,oY,oZ,2.0);
		}
	}
	else if(FarmerJob[playerid] == 24)
	{
	    if(!IsPlayerInAnyVehicle(playerid))
	    {
	    	FarmerJob[playerid]=0;
			DisablePlayerCheckpoint(playerid);
			DestroyObject(wheats[7]);ApplyAnimation(playerid,"OTB","wtchrace_win",4.1,0,0,0,0,0,1);
	    	SetVehicleParamsForPlayer(combine,playerid,0,0);
			DestroyVehicle(combine);
			DestroyVehicle(tractor);
			DestroyVehicle(trailer);
			tractor = CreateVehicle(531,-80.0141,90.5957,3.0812,72.4554,36,2,-1); // Tractor
			combine = CreateVehicle(532,-85.7022,65.3932,4.0856,72.0895,0,0,-1); // Combine
			trailer = CreateVehicle(610,TrailerPosition,72.0895,0,0,-1); // Trailer
		}
	}
	return 1;
}
forward WheatTime(playerid);
public WheatTime(playerid)
{
	
	wheats[0] = CreateObject(855,CP1,0.0,0.0,0.0,0.0);
	wheats[1] = CreateObject(855,CP2,0.0,0.0,0.0,0.0);
	wheats[2] = CreateObject(855,CP3,0.0,0.0,0.0,0.0);
	wheats[3] = CreateObject(855,CP4,0.0,0.0,0.0,0.0);
	wheats[4] = CreateObject(855,CP5,0.0,0.0,0.0,0.0);
	wheats[5] = CreateObject(855,CP6,0.0,0.0,0.0,0.0);
	wheats[6] = CreateObject(855,CP7,0.0,0.0,0.0,0.0);
    wheats[7] = CreateObject(855,CP8,0.0,0.0,0.0,0.0);
    SetPlayerCheckpoint(playerid,CP1+2,6.0);
}

#endif

