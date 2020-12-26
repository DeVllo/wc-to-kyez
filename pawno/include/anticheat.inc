/* 																		ANTICHEAT
*/


// -==========> MACROS & GENERAL DEFINITIONS
#define  ANTIC_VERSION 						(9)
#define  SPECIAL_ACTION_PISSING  			(68)
#define  VarAntic(%0)<%1>   				antic_pInfo[%0][antic_%1]
#define  VarVehicle(%0)<%1> 				antic_vInfo[%0][v_antic_%1]
#define  ANTIC::%0(%1)      				forward antic_%0(%1); public antic_%0(%1)
#define  A_Format(%1,       				format(%1,sizeof(%1),
#define  HORAS_RVEH 						(3600*6)
#define  MAX_MINS_AFK               		(40)
#define  MAX_WEAPON_SKILL_LEVEL     		(11)
#define  SyncPlayer(%0,%1)					antic_SyncPlayer[%0][antic_%1] = 3

// -==========> ANTI-AIRBREAK DEFINITIONS
#define  AIRBREAK_ONFOOT_DISTANCE           (15.0)
#define  AIRBREAK_VEHICLE_DISTANCE          (60.0)
#define  AIRBREAK_MAX_WARNS                 (3)

// -===========> TELEPORT POSITIONS (Extracted from JunkBuster) <===========- //

static const Float: CheatPositions [][3] =
{
	{-1935.77, 228.79, 34.16}, //Transfender near Wang Cars in Doherty
	{-2707.48, 218.65, 4.93}, //Wheel Archangels in Ocean Flats
	{2645.61, -2029.15, 14.28}, //LowRider Tuning Garage in Willowfield
	{1041.26, -1036.77, 32.48}, //Transfender in Temple
	{2387.55, 1035.70, 11.56}, //Transfender in come-a-lot
	{1836.93, -1856.28, 14.13}, //Eight Ball Autos near El Corona
	{2006.11, 2292.87, 11.57}, //Welding Wedding Bomb-workshop in Emerald Isle
	{-1787.25, 1202.00, 25.84}, //Michelles Pay 'n' Spray in Downtown
	{720.10, -470.93, 17.07}, //Pay 'n' Spray in Dillimore
	{-1420.21, 2599.45, 56.43}, //Pay 'n' Spray in El Quebrados
	{-100.16, 1100.79, 20.34}, //Pay 'n' Spray in Fort Carson
	{2078.44, -1831.44, 14.13}, //Pay 'n' Spray in Idlewood
	{-2426.89, 1036.61, 51.14}, //Pay 'n' Spray in Juniper Hollow
	{1957.96, 2161.96, 11.56}, //Pay 'n' Spray in Redsands East
	{488.29, -1724.85, 12.01}, //Pay 'n' Spray in Santa Maria Beach
	{1025.08, -1037.28, 32.28}, //Pay 'n' Spray in Temple
	{2393.70, 1472.80, 11.42}, //Pay 'n' Spray near Royal Casino
	{-1904.97, 268.51, 41.04}, //Pay 'n' Spray near Wang Cars in Doherty
	{403.58, 2486.33, 17.23}, //Player Garage: Verdant Meadows
	{1578.24, 1245.20, 11.57}, //Player Garage: Las Venturas Airport
	{-2105.79, 905.11, 77.07}, //Player Garage: Calton Heights
	{423.69, 2545.99, 17.07}, //Player Garage: Derdant Meadows
	{785.79, -513.12, 17.44}, //Player Garage: Dillimore
	{-2027.34, 141.02, 29.57}, //Player Garage: Doherty
	{1698.10, -2095.88, 14.29}, //Player Garage: El Corona
	{-361.10, 1185.23, 20.49}, //Player Garage: Fort Carson
	{-2463.27, -124.86, 26.41}, //Player Garage: Hashbury
	{2505.64, -1683.72, 14.25}, //Player Garage: Johnson House
	{1350.76, -615.56, 109.88}, //Player Garage: Mulholland
	{2231.64, 156.93, 27.63}, //Player Garage: Palomino Creek
	{-2695.51, 810.70, 50.57}, //Player Garage: Paradiso
	{1293.61, 2529.54, 11.42}, //Player Garage: Prickle Pine
	{1401.34, 1903.08, 11.99}, //Player Garage: Redland West
	{2436.50, 698.43, 11.60}, //Player Garage: Rockshore West
	{322.65, -1780.30, 5.55}, //Player Garage: Santa Maria Beach
	{917.46, 2012.14, 11.65}, //Player Garage: Whitewood Estates
	{1641.14, -1526.87, 14.30}, //Commerce Region Loading Bay
	{-1617.58, 688.69, -4.50}, //San Fierro Police Garage
	{837.05, -1101.93, 23.98}, //Los Santos Cemetery
	{2338.32, -1180.61, 1027.98}, //Interior: Burning Desire House
	{-975.5766, 1061.1312, 1345.6719}, //Interior: RC Zero's Battlefield
	{-750.80, 491.00, 1371.70}, //Interior: Liberty City
	{-1400.2138, 106.8926, 1032.2779}, //Interior: Unknown Stadium
	{-2015.6638, 147.2069, 29.3127}, //Interior: Secret San Fierro Chunk
	{2220.26, -1148.01, 1025.80}, //Interior: Jefferson Motel
	{-2660.6185, 1426.8320, 907.3626}, //Interior: Jizzy's Pleasure Dome
	{-1394.20, 987.62, 1023.96}, //Stadium: Bloodbowl
	{-1410.72, 1591.16, 1052.53}, //Stadium: Kickstart
	{-1417.8720, -276.4260, 1051.1910}, //Stadium: 8-Track Stadium
	{-25.8844, -185.8689, 1003.5499}, //24/7 Store: Big-L-Shaped
	{6.0911, -29.2718, 1003.5499}, //24/7 Store: Big-Oblong
	{-30.9469, -89.6095, 1003.5499}, //24/7 Store: Med-Square
	{-25.1329, -139.0669, 1003.5499}, //24/7 Store: Med-Square
	{-27.3123, -29.2775, 1003.5499}, //24/7 Store: Sml-Long
	{-26.6915, -55.7148, 1003.5499}, //24/7 Store: Sml-Square
	{-1827.1473, 7.2074, 1061.1435}, //Airport: Ticket Sales
	{-1855.5687, 41.2631, 1061.1435}, //Airport: Baggage Claim
	{2.3848, 33.1033, 1199.8499}, //Airplane: Shamal Cabin
	{315.8561, 1024.4964, 1949.7973}, //Airplane: Andromada Cargo hold
	{2536.08, -1632.98, 13.79}, // Grove Street
	{1992.93, 1047.31, 10.82}, //Four Dragons Casino
	{2033.00, -1416.02, 16.99}, // LS Hospital
	{-2653.11, 634.78, 14.45}, // SF Hospital
	{1580.22, 1768.93, 10.82}, //LV Hospital
	{-1550.73, 99.29, 17.33}, //SF Export
	//Positions given to me by SureShot :O
 	{-2057.8000, 229.9000, 35.6204}, // San Fierro
 	{-2366.0000, -1667.4000, 484.1011}, // Mount Chiliad
 	{2503.7000, -1705.8000, 13.5480}, // Grove Street
 	{1997.9000, 1056.3000, 10.8203}, // Las Venturas
 	{-2872.7000, 2712.6001, 275.2690}, // BaySide
 	{904.1000, 608.0000, -32.3281}, // Unterwasser
 	{-236.9000, 2663.8000, 73.6513} // The big Cock
};// -> End JunkBuster

static const Float: PoolPosition [][4] =
{
	{ 150.0, 2310.4545, -1415.4428, 24.9921 }, // East Los Santos
	{ 200.0, 1967.7913, -1198.7091, 17.4500 }, // Glen Park
	{ 175.0, 1240.8551, -2382.3767, 8.3144 	}, // Airport LS
	{ 200.0, -2714.6943, -468.7859, 2.2072  }, // Missionary Hill
	{ 150.0, 2095.6088, 1913.3209,  9.0791  }, // The Visage Casino
	{ 300.0, 1948.4782, 1616.1278,  12.5401 }, // The Pirates
	{ 250.0, 2134.8000, 1139.2723,  7.1675  }, // Come-a-lot
	{ 100.0, 194.4131,  -1231.3793, 76.5033 }, // House ID: 1
	{ 100.0, 1278.4604, -805.9335,  86.1229 }, // House ID: 2
	{ 75.0,  1093.7194, -671.7173, 111.4499 }, // House ID: 3
	{ 50.0,  226.1583,  -1188.6862, 73.4499 }  // House ID: 4
};

enum antic_SyncE
{
	antic_Pos,
	antic_Weapon,
	antic_Ping
}

enum antic_WarnE
{
	warn_Airbreak,
	warn_Money
}

enum antic_DataP
{
	antic_Dinero,

	Float:antic_Vida,    Float:antic_Chaleco,
	
	Float:antic_Pos_x,   Float:antic_Pos_y,    Float:antic_Pos_z,
	Float:antic_Spawn_x, Float:antic_Spawn_y,  Float:antic_Spawn_z,
	
	Float:antic_OldSpeed,
	
	antic_Int,
	Float: antic_VidaVeh,
	antic_Warn[antic_WarnE],
	antic_SkillLevel[MAX_WEAPON_SKILL_LEVEL],

	antic_OldVehicle,

	antic_LastKeyPressed,
};

enum antic_DataV
{
	Float:v_antic_Pos_x, 	Float:v_antic_Pos_y,   	  Float:v_antic_Pos_z,
	Float:v_antic_Native_x, Float:v_antic_Native_y,   Float:v_antic_Native_z,
	Float:v_antic_Angle,
	Float:v_antic_Native_Angle
};

enum antic_DataCB
{
	bool: anticcb_OnPlayerConnect,
	bool: anticcb_OnPlayerStateChange,
	bool: anticcb_OnPlayerUpdate,
	bool: anticcb_OnPlayerTakeDamage,
	bool: anticcb_OnPlayerSpawn,
	bool: anticcb_OnPlayerEnterVehicle,
	bool: anticcb_OnPlayerDeath,
	bool: ab_OnVehicleDamageStatusUpdate
};

static
	BitArray: antic_Armas [47] <MAX_PLAYERS>,
	BitArray: antic_JetPack <MAX_PLAYERS>,
	BitArray: antic_InModShop <MAX_PLAYERS>,
	BitArray: antic_Freezed <MAX_PLAYERS>,
	antic_VehOccupied[MAX_VEHICLES] = {0, ...},
	antic_pInfo [MAX_PLAYERS]  [antic_DataP],
	antic_vInfo [MAX_VEHICLES] [antic_DataV],
	antic_hookcb [antic_DataCB],
	antic_SyncPlayer [MAX_PLAYERS][antic_SyncE];

// Special functions
new
	NOP_ResetPlayerWeapons = true,
	NOP_ResetPlayerMoney = false;


new BanWeaps[] =
{
	4, 9, 35, 36, 37, 38, 39
};

forward anticcb2_OnGameModeInit();
forward anticcb2_OnPlayerConnect(playerid);
forward anticcb2_OnPlayerStateChange(playerid, newstate, oldstate);
forward anticcb2_OnPlayerUpdate(playerid);
forward anticcb2_OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid);
forward anticcb2_OnPlayerSpawn(playerid);
forward anticcb2_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
forward anticcb2_OnPlayerDeath(playerid, killerid, reason);
forward ab2_OnVehicleDamageStatusUpdate(vehicleid, playerid);

timer antic_CheckTimer[1000]()
{
	for(new i; i < MAX_VEHICLES; i++)
	    antic_VehOccupied[i] = 0;

	new
	    Float: Distance,
		Keys[3],
		int_var,
		Float: float_var;

	foreach(Player, playerid)
	{
		if(IsPlayerInAnyVehicle(playerid))
		//antic_VehOccupied[GetPlayerVehicleID(playerid)] = 1;
	    if(GetPVarInt(playerid, "Logueado") == 0 || IsPlayerPaused(playerid) || !GetPVarInt(playerid, "_SPAWNEO") || GetPlayerAdminLevelOP(playerid) >= 59) return 1;
	    
		// -=======> AFK
		/*if( (GetTickCount()-VarAntic(playerid)<LastKeyPressed>) > (60000*MAX_MINS_AFK) )
		{
		    antic_Kick(playerid,"AFK [30 Minutos]");
		    continue;
		}*/

		Keys[0] = 0; Keys[1] = 0; Keys[2] = 0;
		GetPlayerKeys(playerid, Keys[0], Keys[1], Keys[2]);

		if(Keys[0] != 0 || Keys[1] != 0 || Keys[2] != 0)
		{
		    VarAntic(playerid)<LastKeyPressed> = GetTickCount();
		}

		// -=======> MONEY HACK
		if( VarAntic(playerid)<Dinero> != GetPlayerMoney(playerid) )
		{
		    if(NOP_ResetPlayerMoney)
		    {
			    if( GetPlayerMoney(playerid) > VarAntic(playerid)<Dinero> )
			    {
			        VarAntic(playerid)<Warn>[warn_Money]++;
			        if(VarAntic(playerid)<Warn>[warn_Money] >= 10)
			        {
			        	antic_Kick(playerid,"NOP ResetPlayerMoney");
					}
				}
			}
			antic_SetPlayerMoney(playerid, VarAntic(playerid)<Dinero> );
		}
		else
		{
			VarAntic(playerid)<Warn>[warn_Money] = 0;
		}

		// -=======> HEALTH/ARMOUR HACK
		GetPlayerHealth(playerid, float_var);

		if( float_var > VarAntic(playerid)<Vida> )
		{
		    if( VarAntic(playerid)<Vida> > 0.0 )
		    {
		    	SetPlayerHealth(playerid, VarAntic(playerid)<Vida>);
			}
			else
			{
	  			VarAntic(playerid)<Vida> = float_var;
			}
		}
		if( float_var > 100.0 )
		{
		    antic_Kick(playerid, "Cheat de vida.");
		    continue;
		}

		GetPlayerArmour(playerid, float_var);

		if( float_var > VarAntic(playerid)<Chaleco> )
		{
		    SetPlayerArmour(playerid, VarAntic(playerid)<Chaleco>);
		}

		// -======> PING CHECKER
		if(!antic_SyncPlayer[playerid][antic_Ping])
		{
			new
			    ping = GetPlayerPing(playerid);
			    
			if(ping > 900 && !(ping & 0xFFFF))
			{
			    new
			        str[40];
				A_Format(str, "Ping excesivo (%dms/900ms)", ping );
				antic_Kick(playerid, str);
				continue;
			}
		}
		else
		    antic_SyncPlayer[playerid][antic_Ping]--;

		// -=======> WEAPON HACK
		if(!antic_SyncPlayer[playerid][antic_Weapon])
		{
			for(new i = 0; i < 13; i++)
			{
				new
					Arma = 0;

	            int_var = 0;

				GetPlayerWeaponData(playerid, i, Arma, int_var);

				if(Arma != 0 && int_var != 0)
				{
				    if(!Bit_Get(antic_Armas[Arma],playerid) && Arma != 40)
				    {
						for(new Weap_ID; Weap_ID < sizeof(BanWeaps); Weap_ID++)
						{
						    if(Arma == BanWeaps[Weap_ID])
						    {
						        ResetPlayerWeapons(playerid);

						        new
									Str[40],
									Weap[20];

						        GetWeaponName(Arma, Weap, 20);
						        A_Format(Str,"Cheat de armas [%s]", Weap);
								antic_Ban(playerid, Str);
							}
						}
				        ResetPlayerWeapons(playerid);

				        new
							Str[40],
							Weap[20];

				        GetWeaponName(Arma, Weap, 20);
				        A_Format(Str,"Cheat de armas [%s]", Weap);
						antic_Kick(playerid, Str);
						continue;
					}
				}
			}
		}
		else
		    antic_SyncPlayer[playerid][antic_Weapon]--;

		// -=======> FLY MODE
		GetPlayerPos(playerid, float_var, float_var, Distance);
		int_var = GetPlayerAnimationIndex(playerid);

		if( Distance > 5.0 && (1538 <= int_var <= 1542) )
		{
		    if(!IsPlayerInPool(playerid))
		    {
				antic_Kick(playerid,"Fly Mode");
				continue;
			}
		}

		// -=======> JETPACK HACK
		if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK)
		{
		    if(Bit_Get(antic_JetPack, playerid) == false)
		    {
			    antic_Ban(playerid, "JetPack");
			    return 0;
			}
		}
		// -=======> AIRBREAK/NOP SETPLAYERPOS/TELEPORT HACK/CHECKPOINT TELEPORT.
  		#define AIRBREAK_BAD_DETECT     goto GetPosition

		if(!antic_SyncPlayer[playerid][antic_Pos])
		{
			if(VarAntic(playerid)<Pos_x> == 0 && VarAntic(playerid)<Pos_y> == 0 && VarAntic(playerid)<Pos_z> == 0)
	          	AIRBREAK_BAD_DETECT;

			int_var = GetPlayerState(playerid);
			float_var = GetPlayerDistanceFromPoint(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);

			if(int_var == PLAYER_STATE_PASSENGER)
			    AIRBREAK_BAD_DETECT;

			if(int_var == PLAYER_STATE_DRIVER)
			{
			    if(GetPlayerVehicleID(playerid) != VarAntic(playerid)<OldVehicle>)
			    {
					antic_Kick(playerid, "Cleo detectado");
					continue;
				}

				if(float_var >= 50.0)
				{
				    int_var = GetPlayerVehicleID(playerid);
				    
				    new
						Float: speed_var = GetVehicleSpeed(int_var);

				    if(speed_var >= 50.0 || IsPlayerInModShop(playerid))
				        AIRBREAK_BAD_DETECT;

					if(IsCheatPosition(playerid))
					{
						SetPlayerPos(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);
						if(GetPlayerInterior(playerid) != VarAntic(playerid)<Int>)
			   				SetPlayerInterior(playerid, VarAntic(playerid)<Int>);

		   				antic_Kick(playerid,"Cheat de teleport.");
						continue;
					}

					if(IsPlayerInCheckpoint(playerid) || IsPlayerInRaceCheckpoint(playerid))
					{
						SetPlayerPos(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);
						antic_Kick(playerid,"Checkpoint teleport.");
						continue;
					}

					continue;
				}
				//Airbreak Check
				if(VarAntic(playerid)<OldSpeed> > AIRBREAK_VEHICLE_DISTANCE && float_var > AIRBREAK_VEHICLE_DISTANCE)
				{
					VarAntic(playerid)<Warn>[warn_Airbreak] ++;
					if(VarAntic(playerid)<Warn>[warn_Airbreak] >= AIRBREAK_MAX_WARNS)
					{
					    VarAntic(playerid)<Warn>[warn_Airbreak] = 0;
					    antic_Kick(playerid, "Airbreak (Vehiculo).");
					    continue;
					}
				}
				else
				{
				    VarAntic(playerid)<Warn>[warn_Airbreak] = 0;
				}
				VarAntic(playerid)<OldSpeed> = float_var;
			}
			else if(int_var == PLAYER_STATE_ONFOOT)
			{
			    if(float_var <= 30.0)
					AIRBREAK_BAD_DETECT;

				if(IsCheatPosition(playerid))
				{
					SetPlayerPos(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);

					if(GetPlayerInterior(playerid) != VarAntic(playerid)<Int>)
		   				SetPlayerInterior(playerid, VarAntic(playerid)<Int>);

	   				antic_Kick(playerid,"Cheat de teleport.");
					continue;
				}

				if(IsPlayerInCheckpoint(playerid) || IsPlayerInRaceCheckpoint(playerid) )
				{
					SetPlayerPos(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);
					antic_Kick(playerid,"Checkpoint teleport.");
					continue;
				}

				//Airbreak Check
				if(VarAntic(playerid)<OldSpeed> > AIRBREAK_ONFOOT_DISTANCE && float_var > AIRBREAK_ONFOOT_DISTANCE)
				{
					if(GetPlayerAnimationIndex(playerid) != 1130 && GetPlayerSurfingVehicleID(playerid) == INVALID_PLAYER_ID) //falling
					{
						VarAntic(playerid)<Warn>[warn_Airbreak] ++;
						if(VarAntic(playerid)<Warn>[warn_Airbreak] >= AIRBREAK_MAX_WARNS)
						{
						    VarAntic(playerid)<Warn>[warn_Airbreak] = 0;
						    antic_Kick(playerid, "Airbreak (Pie).");
						    continue;
						}
					}
				}
				else
				{
				    VarAntic(playerid)<Warn>[warn_Airbreak] = 0;
				}
				VarAntic(playerid)<OldSpeed> = float_var;
			}
			GetPosition:
			GetPlayerPos(playerid,VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);
	  		VarAntic(playerid)<Int> = GetPlayerInterior(playerid);
		}
		else
		    antic_SyncPlayer[playerid][antic_Pos]--;

	}
	return 1;
}


public OnGameModeInit()
{
	repeat antic_CheckTimer();

	antic_hookcb[anticcb_OnPlayerConnect] = funcidx("anticcb2_OnPlayerConnect") != -1;
	antic_hookcb[anticcb_OnPlayerStateChange] = funcidx("anticcb2_OnPlayerStateChange") != -1;
	antic_hookcb[anticcb_OnPlayerUpdate] = funcidx("anticcb2_OnPlayerUpdate") != -1;
	antic_hookcb[anticcb_OnPlayerTakeDamage] = funcidx("anticcb2_OnPlayerTakeDamage") != -1;
	antic_hookcb[anticcb_OnPlayerSpawn] = funcidx("anticcb2_OnPlayerSpawn") != -1;
	antic_hookcb[anticcb_OnPlayerEnterVehicle] = funcidx("anticcb2_OnPlayerEnterVehicle") != -1;
	antic_hookcb[anticcb_OnPlayerDeath] = funcidx("anticcb2_OnPlayerDeath") != -1;
	antic_hookcb[ab_OnVehicleDamageStatusUpdate] = funcidx("ab2_OnVehicleDamageStatusUpdate") != -1;

	return ( funcidx("anticcb2_OnGameModeInit") != -1 ) ? CallLocalFunction("anticcb2_OnGameModeInit","") : 1;
}

#if defined _ALS_OnGameModeInit
	#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif

#define OnGameModeInit anticcb2_OnGameModeInit

public OnPlayerSpawn(playerid)
{
	VarAntic(playerid)<Pos_x> = VarAntic(playerid)<Spawn_x>;
	VarAntic(playerid)<Pos_y> = VarAntic(playerid)<Spawn_y>;
	VarAntic(playerid)<Pos_z> = VarAntic(playerid)<Spawn_z>;

	SyncPlayer(playerid,Ping);
	SyncPlayer(playerid,Pos);

	return (antic_hookcb[anticcb_OnPlayerSpawn]) ? CallLocalFunction("anticcb2_OnPlayerSpawn", "i", playerid) : 1;
}

#if defined _ALS_OnPlayerSpawn
	#undef OnPlayerSpawn
#else
	#define _ALS_OnPlayerSpawn
#endif

#define OnPlayerSpawn anticcb2_OnPlayerSpawn

public OnPlayerDeath(playerid, killerid, reason)
{
	ResetPlayerWeapons(playerid);
	return (antic_hookcb[anticcb_OnPlayerDeath]) ? CallLocalFunction("anticcb2_OnPlayerDeath", "iii", playerid, killerid, reason) : 1;
}

#if defined _ALS_OnPlayerDeath
	#undef OnPlayerDeath
#else
	#define _ALS_OnPlayerDeath
#endif

#define OnPlayerDeath anticcb2_OnPlayerDeath

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return (antic_hookcb[anticcb_OnPlayerEnterVehicle]) ? CallLocalFunction("anticcb2_OnPlayerEnterVehicle", "iii", playerid, vehicleid, ispassenger) : 1;
}

#if defined _ALS_OnPlayerEnterVehicle
	#undef OnPlayerEnterVehicle
#else
	#define _ALS_OnPlayerEnterVehicle
#endif

#define OnPlayerEnterVehicle anticcb2_OnPlayerEnterVehicle

public OnPlayerConnect(playerid)
{
	new
		i;

	for(i = 0; i < sizeof (antic_pInfo[]); i++)
	{
	    antic_pInfo[playerid][antic_DataP:i] = 0;
	}

	VarAntic(playerid)<VidaVeh> = -255.5;
	VarAntic(playerid)<LastKeyPressed> = GetTickCount();
 	VarAntic(playerid)<OldVehicle> = INVALID_VEHICLE_ID;

	for(i = 0; i < 47; i++)
	{
	    Bit_Set(antic_Armas[i], playerid, false);
	}

	for(i = 0; antic_SyncE:i < antic_SyncE; i++)
	{
		antic_SyncPlayer[playerid][antic_SyncE: i] = 0;
	}

 	Bit_Set(antic_JetPack, playerid, false);
 	Bit_Set(antic_InModShop, playerid, false);
 	Bit_Set(antic_Freezed, playerid, false);

	return (antic_hookcb[anticcb_OnPlayerConnect]) ? CallLocalFunction("anticcb2_OnPlayerConnect", "i", playerid) : 1;
}

#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif

#define OnPlayerConnect anticcb2_OnPlayerConnect

public OnPlayerTakeDamage(playerid, issuerid, Float: amount, weaponid)
{
	new
	    Float:Vida,
	    Float:Armadura;

	GetPlayerHealth(playerid, Vida);
	GetPlayerHealth(playerid, Armadura);

	if(issuerid == INVALID_PLAYER_ID)
	{
		VarAntic(playerid)<Vida> = (Vida - amount);
	}
	else
	{
	    if( Armadura > 0.0 )
	    {
			if( Armadura > amount )
			{
			    VarAntic(playerid)<Chaleco> = (Armadura - amount);
			}
			else
			{
			    VarAntic(playerid)<Chaleco> = 0;
			    VarAntic(playerid)<Vida> = (Vida + (Armadura - amount));
			}
		}
		else
		{
			VarAntic(playerid)<Vida> = (Vida - amount);
		}
	}

	return (antic_hookcb[anticcb_OnPlayerTakeDamage]) ? CallLocalFunction("anticcb2_OnPlayerTakeDamage", "iifi", playerid, issuerid, amount, weaponid) : 1;
}

#if defined _ALS_OnPlayerTakeDamage
	#undef OnPlayerTakeDamage
#else
	#define _ALS_OnPlayerTakeDamage
#endif

#define OnPlayerTakeDamage anticcb2_OnPlayerTakeDamage

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(oldstate == PLAYER_STATE_SPECTATING)
	{
		VarAntic(playerid)<OldSpeed> = 0;
 	    GetPlayerPos(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);
	}
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
	{

		new
		    VehID = GetPlayerVehicleID(playerid),
			model = GetVehicleModel(VehID);

		VarAntic(playerid)<OldSpeed> = 0;
        VarAntic(playerid)<OldVehicle> = VehID;

	 	switch(model)
	 	{
   			case 592,577,511,512,520,593,553,476,519,460,513,548,425,417,487,488,497,563,447,469:
   			{
			   Bit_Set(antic_Armas[46], playerid, true);
			}
			case 457:
			{
				Bit_Set(antic_Armas[2], playerid, true);
			}
			case 596,597,598,599:
			{
				Bit_Set(antic_Armas[25], playerid, true);
			}
		}
	    GetVehicleHealth(VehID, VarAntic(playerid)<VidaVeh>);
	}
	else if(newstate == PLAYER_STATE_ONFOOT)
	{
		VarAntic(playerid)<OldSpeed> = 0;
	    VarAntic(playerid)<VidaVeh> = -255.5;
	}
	if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER)
	{
	    UpdateUnoccupiedVehiclePos(VarAntic(playerid)<OldVehicle>);
	    VarAntic(playerid)<OldVehicle> = INVALID_VEHICLE_ID;
	}

	return (antic_hookcb[anticcb_OnPlayerStateChange]) ? CallLocalFunction("anticcb2_OnPlayerStateChange", "iii", playerid, newstate, oldstate) : 1;
}

#if defined _ALS_OnPlayerStateChange
	#undef OnPlayerStateChange
#else
	#define _ALS_OnPlayerStateChange
#endif

#define OnPlayerStateChange anticcb2_OnPlayerStateChange

public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat)
{
	if(antic_VehOccupied[vehicleid])
	    return 0;
	    
	if(playerid != INVALID_PLAYER_ID) //No estoy seguro si esto es necesario.
	{
 		new
	        Float: VehicleTempPos[3],
			Float: Dist_to_origin;

 		GetVehiclePos(vehicleid, VehicleTempPos[0], VehicleTempPos[1], VehicleTempPos[2]);

 		#define Temp 		VehicleTempPos
 		#define Orig 		VarVehicle(vehicleid)

 		Dist_to_origin = GetDistanceFromPointToPoint(Temp[0], Temp[1], Temp[2], Orig<Pos_x>, Orig<Pos_y>, Orig<Pos_z>);//calcule the distance vehicle pos - vehicle pos registred by server

		if(20.0 <= Dist_to_origin <= 300.0) // 300.0=aprox. stream distance (cheats cant detect the unstreamed vehicles - los cheats no pueden detectar vehículos descargados)
		{
		    SetVehiclePos(vehicleid, Orig<Pos_x>, Orig<Pos_y>, Orig<Pos_z>);
		    SetVehicleZAngle(vehicleid, Orig<Angle>);
		    return 1;
		}

		UpdateUnoccupiedVehiclePos(vehicleid);

 		#undef Temp
 		#undef Orig

	}
	return 1;
}

public OnPlayerUpdate(playerid)
{
	if(IsPlayerNPC(playerid)) return 1;

	if( JugadorInfo[playerid][jJugando] == 0 ) return 0; // update off

	static
	    Float:VarFloat;

	if(IsPlayerInAnyVehicle(playerid))
	{
		new
		    VehID = GetPlayerVehicleID(playerid);

		GetVehicleHealth(VehID, VarFloat);

		if( VarFloat > VarAntic(playerid)<VidaVeh> )
		{
		    if( VarAntic(playerid)<VidaVeh> == -255.5 )
		        VarAntic(playerid)<VidaVeh> = VarFloat;

			else
		    	antic_SetVehicleHealth(VehID, VarAntic(playerid)<VidaVeh>);
		}
	}

	return (antic_hookcb[anticcb_OnPlayerUpdate]) ? CallLocalFunction("anticcb2_OnPlayerUpdate", "i", playerid) : 1;
}

#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif

#define OnPlayerUpdate anticcb2_OnPlayerUpdate

public OnEnterExitModShop(playerid, enterexit, interiorid)
{
	Bit_Set(antic_InModShop, playerid, bool:enterexit);
	VarAntic(playerid)<Int> = interiorid;
	SyncPlayer(playerid,Pos);
	return 1;
}

public OnPlayerUnpause(playerid)
{
	SyncPlayer(playerid,Ping);
	return 1;
}

#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif

#define OnPlayerUpdate anticcb2_OnPlayerUpdate

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	new
		vehID = GetPlayerVehicleID(playerid);

	if(vehID != vehicleid) return 1;

	new
	    Float: VehHP;

	GetVehicleHealth(vehicleid, VehHP);
	VarAntic(playerid)<VidaVeh> = VehHP;
	return (antic_hookcb[ab_OnVehicleDamageStatusUpdate]) ? CallLocalFunction("ab2_OnVehicleDamageStatusUpdate", "ii", vehicleid, playerid) : 1;
}

#if defined ALS_OnVehicleDamageStatusUpdate
	#undef OnVehicleDamageStatusUpdate
#else
	#define ALS_OnVehicleDamageStatusUpdate
#endif
#define OnVehicleDamageStatusUpdate ab2_OnVehicleDamageStatusUpdate

/*------------------------------- UTIL ---------------------------------------*/
stock antic_SetPlayerMoney(playerid, money)
{
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, money);
	return 1;
}

stock IsPlayerInModShop(playerid)
{
	return bool:Bit_Get(antic_InModShop, playerid);
}

stock antic_Kick(playerid, reason[])
{
	new
		string[128],
		Name[MAX_PLAYER_NAME];

	GetPlayerName(playerid, Name, 24);

	format(string, 128, "[AntiCheat] {FFFFFF}%s fue kickeado {FF0000}[%s]", Name, reason);
	
	foreach(Player, i)
	    if(GetPlayerAdminLevelOP(i))
			SendClientMessage(i, 0xFF0000FF, string);

	printf("[ANTICHEAT] %s kickeado [%s]", Name, reason);

	new
	    File: antic_Log = fopen("Anticheat_log.txt", io_append);

	format(string, 128, "%s expulsado - #%s\r\n", Name, reason);
	fwrite(antic_Log, string);
	fclose(antic_Log);

	SetTimerEx("_KickEx2", 800, false, "i", playerid);
	return 1;
}

stock antic_Ban(playerid, reason[])
{
	new
		string[128],
		Name[MAX_PLAYER_NAME];

	GetPlayerName(playerid, Name, 24);

	format(string, 128, "[AntiCheat] {FFFFFF}%s fue baneado {FF0000}[%s]", Name, reason);

	SendClientMessageToAll(0xFF0000FF, string);

	printf("[ANTICHEAT] %s baneado [%s]", Name, reason);

	new
	    File: antic_Log = fopen("Anticheat_log.txt", io_append);

	format(string, 128, "%s baneado - #%s\r\n", Name, reason);
	fwrite(antic_Log, string);
	fclose(antic_Log);

	SetTimerEx("_BanEx2", 800, false, "is", playerid, reason);
	return 1;
}

stock QuitarArma(playerid,slot)
{
	new
		Armas[13][2],
		i;

	if(0 < slot <= 12)
	{
		for(i = 0; i < 13; i++)
		{
	 		if(slot != i)
			{
	  			GetPlayerWeaponData(playerid, i, Armas[i][0], Armas[i][1]);
			}
		}
		antic_ResetPlayerWeapons(playerid);
		for(i = 0; i < 13; i++)
		{
	   		antic_GivePlayerWeapon(playerid, Armas[i][0], Armas[i][1]);
		}
	}
	return 1;
}

stock HaveWeapon(playerid, weaponid)
{
	if(i == 0) return 1;

	for(new i = 1; i < 13; i++)
	{
		new
		    Arma, Balas;

		GetPlayerWeaponData(playerid, i, Arma, Balas);

		if(Arma == weaponid) return 1;
	}
	return 0;
}

stock GetWeaponSlot(weaponid)
{
	new slot;
	switch(weaponid)
	{
		case 0,1: slot = 0;
		case 2 .. 9: slot = 1;
		case 10 .. 15: slot = 10;
		case 16 .. 18, 39: slot = 8;
		case 22 .. 24: slot = 2;
		case 25 .. 27: slot = 3;
		case 28, 29, 32: slot = 4;
		case 30, 31: slot = 5;
		case 33, 34: slot = 6;
		case 35 .. 38: slot = 7;
		case 40: slot = 12;
		case 41 .. 43: slot = 9;
		case 44 .. 46: slot = 11;
	}
	return slot;
}

stock IsPlayerAiming(playerid)
{
	return (GetPlayerCameraMode(playerid) == 53);
}

stock UpdateUnoccupiedVehiclePos(vehicleid)
{
	GetVehiclePos(vehicleid, VarVehicle(vehicleid)<Pos_x>, VarVehicle(vehicleid)<Pos_y>, VarVehicle(vehicleid)<Pos_z>);
 	GetVehicleZAngle(vehicleid, VarVehicle(vehicleid)<Angle>);
	return 1;
}

stock IsCheatPosition (playerid)//Extracted from JunkBuster
{
	for (new i = 0; i < sizeof (CheatPositions); ++i)
		if (IsPlayerInRangeOfPoint (playerid, 5.0, CheatPositions [i][0], CheatPositions [i][1], CheatPositions [i][2]))
			return true;
	return false;
}

stock IsPlayerInPool (playerid)
{
	for (new i = 0; i < sizeof (PoolPosition); ++i)
		if (IsPlayerInRangeOfPoint (playerid, PoolPosition [i][0], PoolPosition [i][1], PoolPosition [i][2], PoolPosition [i][3]))
			return true;
	return false;
}

/*----------------------------- FUNCIONES ------------------------------------*/
ANTIC::ResetPlayerMoney(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		VarAntic(playerid)<Dinero> = 0;
		return 1;
	}
	return 0;
}

#if defined _ALS_ResetPlayerMoney
	#undef ResetPlayerMoney
#else
	#define _ALS_ResetPlayerMoney
#endif

#define ResetPlayerMoney antic_ResetPlayerMoney
// -========================================================================- //
ANTIC::GivePlayerMoney(playerid, money)
{
	if(IsPlayerConnected(playerid))
	{
		VarAntic(playerid)<Dinero> += money;
		GivePlayerMoney(playerid, money);
		return 1;
	}
	return 0;
}

#if defined _ALS_GivePlayerMoney
	#undef GivePlayerMoney
#else
	#define _ALS_GivePlayerMoney
#endif

#define GivePlayerMoney antic_GivePlayerMoney
// -========================================================================- //
ANTIC::GetPlayerMoney(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		return VarAntic(playerid)<Dinero>;
	}
	return 0;
}

#if defined _ALS_GetPlayerMoney
	#undef GetPlayerMoney
#else
	#define _ALS_GetPlayerMoney
#endif

#define GetPlayerMoney antic_GetPlayerMoney
// -========================================================================- //
ANTIC::SetPlayerHealth(playerid, Float:health)
{
	if(IsPlayerConnected(playerid))
	{
	    if(health > 100.0)
	        health = 100.0;

		VarAntic(playerid)<Vida> = health;
		SetPlayerHealth(playerid, health);

		new
		    Float: GB = GetPVarFloat(playerid, "VIDA_PERDIDA");

		if(health > GB)
		{
		    SetPVarFloat(playerid, "VIDA_PERDIDA", health);
		    SetGreyLifePos(playerid, health, health);
		}
		else
		{
		    SetGreyLifePos(playerid, health, GB);
		}
		return 1;
	}
	return 0;
}

#if defined _ALS_SetPlayerHealth
	#undef SetPlayerHealth
#else
	#define _ALS_SetPlayerHealth
#endif

#define SetPlayerHealth antic_SetPlayerHealth
// -========================================================================- //
ANTIC::SetPlayerArmour(playerid, Float:armour)
{
	if(IsPlayerConnected(playerid))
	{
		VarAntic(playerid)<Chaleco> = armour;
		SetPlayerArmour(playerid, armour);
		return 1;
	}
	return 0;
}

#if defined _ALS_SetPlayerArmour
	#undef SetPlayerArmour
#else
	#define _ALS_SetPlayerArmour
#endif

#define SetPlayerArmour antic_SetPlayerArmour
// -========================================================================- //
ANTIC::GivePlayerWeapon(playerid, weapon, ammo)
{
	if(IsPlayerConnected(playerid))
	{
	    if(0 < weapon < 47)
	    {
			for(new Weap; Weap < sizeof(BanWeaps); Weap++)
			{
			    if(weapon == BanWeaps[Weap])
			    {
					SendClientMessage(playerid, 0xFF000000, "[AntiCheat] {FFFFFF}Por cuestiones de seguridad, se bloqueo un arma que el servidor te dio");
					return 0;
				}
			}

		    Bit_Set(antic_Armas[weapon], playerid, true);
			SyncPlayer(playerid,Weapon);
		    GivePlayerWeapon(playerid, weapon, ammo);
			return 1;
		}
	}
	return 0;
}

#if defined _ALS_GivePlayerWeapon
	#undef GivePlayerWeapon
#else
	#define _ALS_GivePlayerWeapon
#endif

#define GivePlayerWeapon antic_GivePlayerWeapon
// -========================================================================- //
ANTIC::SetPlayerInterior(playerid, interior)
{
	if(IsPlayerConnected(playerid))
	{
		VarAntic(playerid)<Int> = interior;
	    SetPlayerInterior(playerid, interior);
		return 1;
	}
	return 0;
}

#if defined _ALS_SetPlayerInterior
	#undef SetPlayerInterior
#else
	#define _ALS_SetPlayerInterior
#endif

#define SetPlayerInterior antic_SetPlayerInterior
// -========================================================================- //
ANTIC::SetPlayerPos(playerid, Float:x, Float:y, Float:z)
{
	if(IsPlayerConnected(playerid))
	{
		VarAntic(playerid)<Pos_x> = x;
		VarAntic(playerid)<Pos_y> = y;
		VarAntic(playerid)<Pos_z> = z;
		SyncPlayer(playerid,Pos);
	    SetPlayerPos(playerid, x, y, z);
		return 1;
	}
	return 0;
}

#if defined _ALS_SetPlayerPos
	#undef SetPlayerPos
#else
	#define _ALS_SetPlayerPos
#endif

#define SetPlayerPos antic_SetPlayerPos
// -========================================================================- //
ANTIC::PutPlayerInVehicle(playerid, vehicleid, seat)
{
	if(IsPlayerConnected(playerid))
	{
		new
		    Float:_P[3];

		GetVehiclePos(vehicleid, _P[0], _P[1], _P[2]);

		VarAntic(playerid)<Pos_x> = _P[0];
		VarAntic(playerid)<Pos_y> = _P[1];
		VarAntic(playerid)<Pos_z> = _P[2];

		SyncPlayer(playerid,Pos);

 		VarAntic(playerid)<OldVehicle> = vehicleid;
		PutPlayerInVehicle(playerid, vehicleid, seat);
		return 1;
	}
	return 0;
}

#if defined _ALS_PutPlayerInVehicle
	#undef PutPlayerInVehicle
#else
	#define _ALS_PutPlayerInVehicle
#endif

#define PutPlayerInVehicle antic_PutPlayerInVehicle
// -========================================================================- //
ANTIC::SetPlayerSpecialAction(playerid, actionid)
{
	if(IsPlayerConnected(playerid))
	{
 		if(Bit_Get(antic_Freezed, playerid)) return 0;

	    if(actionid == SPECIAL_ACTION_USEJETPACK)
			Bit_Set(antic_JetPack, playerid, true);

     	SetPlayerSpecialAction(playerid, actionid);
		return 1;
	}
	return 0;
}

#if defined _ALS_SetPlayerSpecialAction
	#undef SetPlayerSpecialAction
#else
	#define _ALS_SetPlayerSpecialAction
#endif

#define SetPlayerSpecialAction antic_SetPlayerSpecialAction
// -========================================================================- //
ANTIC::SetVehicleHealth(vehicleid, Float:health)
{
	if(400.0 <= health <= 1000.0)
	{
		foreach(Player, i)
		{
	 		if(IsPlayerInVehicle(i, vehicleid))
	 		{
	 		    VarAntic(i)<VidaVeh> = health;
			}
		}
		SetVehicleHealth(vehicleid, health);
		return 1;
	}
	return 0;
}

#if defined _ALS_SetVehicleHealth
	#undef SetVehicleHealth
#else
	#define _ALS_SetVehicleHealth
#endif

#define SetVehicleHealth antic_SetVehicleHealth
// -========================================================================- //
ANTIC::RepairVehicle(vehicleid)
{
	antic_SetVehicleHealth(vehicleid, 1000.0);
	RepairVehicle(vehicleid);
	return 1;
}

#if defined _ALS_RepairVehicle
	#undef RepairVehicle
#else
	#define _ALS_RepairVehicle
#endif

#define RepairVehicle antic_RepairVehicle
// -========================================================================- //
ANTIC::SetVehiclePos(vehicleid, Float:x, Float:y, Float:z)
{
	foreach(Player, i)
	{
 		if(IsPlayerInVehicle(i, vehicleid))
 		{
 		    VarAntic(i)<Pos_x> = x;
 		    VarAntic(i)<Pos_y> = y;
 		    VarAntic(i)<Pos_z> = z;
			SyncPlayer(i,Pos);
		}
	}

	VarVehicle(vehicleid)<Pos_x> = x;
	VarVehicle(vehicleid)<Pos_y> = y;
	VarVehicle(vehicleid)<Pos_z> = z;

	SetVehiclePos(vehicleid, x, y, z);
	return 1;
}

#if defined _ALS_SetVehiclePos
	#undef SetVehiclePos
#else
	#define _ALS_SetVehiclePos
#endif

#define SetVehiclePos antic_SetVehiclePos
// -========================================================================- //
ANTIC::ResetPlayerWeapons(playerid)
{
	if(IsPlayerConnected(playerid))
	{
		ResetPlayerWeapons(playerid);
		if(NOP_ResetPlayerWeapons)
		{
		    for(new i; i < 47; i++)
		    {
		        Bit_Set(antic_Armas[i], playerid, false);
			}
		}
  		SyncPlayer(playerid,Weapon);
		return 1;
	}
	return 0;
}

#if defined _ALS_ResetPlayerWeapons
	#undef ResetPlayerWeapons
#else
	#define _ALS_ResetPlayerWeapons
#endif

#define ResetPlayerWeapons antic_ResetPlayerWeapons
// -========================================================================- //
ANTIC::TogglePlayerSpectating(playerid, bool:toggle)
{
	if(IsPlayerConnected(playerid))
	{
		new
			Str[20],
			i;

		if(toggle == true)
		{
			SetPVarInt(playerid, "_SPECTEANDO", 1);
			SetPVarInt(playerid, "_OLDSKIN", GetPlayerSkin(playerid) );
			for(i = 0; i < 13; i++)
			{
			    new
			        weapon,
			        ammo;

                GetPlayerWeaponData(playerid, i, weapon, ammo);

				if(weapon != 0 && ammo != 0)
				{
					format(Str,20,"_OLD_WEAP_%d", i);
					SetPVarInt(playerid, Str, weapon);

					format(Str,20,"_OLD_AMMO_%d", i);
					SetPVarInt(playerid, Str, ammo);
				}
			}
			TogglePlayerSpectating(playerid, true);
		}
		else
		{
			TogglePlayerSpectating(playerid, false);
			GetPlayerPos(playerid, VarAntic(playerid)<Pos_x>, VarAntic(playerid)<Pos_y>, VarAntic(playerid)<Pos_z>);
			SetPlayerSkin(playerid, GetPVarInt(playerid, "_OLDSKIN") );

			DeletePVar(playerid, "_OLDSKIN");
			DeletePVar(playerid, "_SPECTEANDO");

			for(i = 0; i < 13; i++)
			{
			    new
			        AmmoVal,
			        WeapVal;

				format(Str,20,"_OLD_WEAP_%d", i);
				WeapVal = GetPVarInt(playerid, Str);
				DeletePVar(playerid, Str);

				format(Str,20,"_OLD_AMMO_%d", i);
				AmmoVal = GetPVarInt(playerid, Str);
				DeletePVar(playerid, Str);

				if(WeapVal != 0 && AmmoVal != 0)
				{
					GivePlayerWeapon(playerid, WeapVal, AmmoVal);
				}

			}
		}
		return 1;
	}
	return 0;
}

#if defined _ALS_TogglePlayerSpectating
	#undef TogglePlayerSpectating
#else
	#define _ALS_TogglePlayerSpectating
#endif

#define TogglePlayerSpectating antic_TogglePlayerSpectating
// -========================================================================- //
ANTIC::SetVehicleToRespawn(vehicleid)
{
	if(!IsValidVehicle(vehicleid)) return 0;

	SetVehicleToRespawn(vehicleid);

	VarVehicle(vehicleid)<Pos_x> = VarVehicle(vehicleid)<Native_x>;
	VarVehicle(vehicleid)<Pos_y> = VarVehicle(vehicleid)<Native_y>;
	VarVehicle(vehicleid)<Pos_z> = VarVehicle(vehicleid)<Native_z>;
	VarVehicle(vehicleid)<Native_Angle> = VarVehicle(vehicleid)<Native_Angle>;

	return SetVehicleToRespawn(vehicleid);
}

#if defined _ALS_SetVehicleToRespawn
	#undef SetVehicleToRespawn
#else
	#define _ALS_SetVehicleToRespawn
#endif

#define SetVehicleToRespawn antic_SetVehicleToRespawn
// -========================================================================- //
ANTIC::ShowPlayerDialog(playerid, dialogid, style, title[], text[], butt1[], butt2[])
{
	if(IsPlayerConnected(playerid))
	{
		SetPVarInt(playerid,"antic_DialogID", dialogid);
  		ShowPlayerDialog(playerid, dialogid, style, title, text, butt1, butt2);
  		return 1;
	}

	return 0;
}

#if defined _ALS_ShowPlayerDialog
	#undef ShowPlayerDialog
#else
	#define _ALS_ShowPlayerDialog
#endif

#define ShowPlayerDialog antic_ShowPlayerDialog
// -========================================================================- //
ANTIC::GetPlayerWeaponData(playerid, slot, &weap, &ammo)
{
	if(IsPlayerConnected(playerid))
	{
		new
		    Weap, Ammo;

		GetPlayerWeaponData(playerid, slot, Weap, Ammo);

		if(Weap != 0)
		{
			if(Bit_Get(antic_Armas[Weap], playerid))
			{
			    weap = Weap;
				ammo = Ammo;
				return 1;
			}
		}
	}

	return 0;
}

#if defined _ALS_GetPlayerWeaponData
	#undef GetPlayerWeaponData
#else
	#define _ALS_GetPlayerWeaponData
#endif

#define GetPlayerWeaponData antic_GetPlayerWeaponData
// -========================================================================- //
stock antic_AddStaticVehicle(model, Float:x, Float:y, Float:z, Float:a, c1, c2)
{
	new ret_val = AddStaticVehicle(model, Float:x, Float:y, Float:z, Float:a, c1, c2);
	Iter_Add(Vehicle, ret_val);
	VarVehicle(ret_val)<Native_x> = x;
	VarVehicle(ret_val)<Native_y> = y;
	VarVehicle(ret_val)<Native_z> = z;
	VarVehicle(ret_val)<Pos_x> = x;
	VarVehicle(ret_val)<Pos_y> = y;
	VarVehicle(ret_val)<Pos_z> = z;
	VarVehicle(ret_val)<Angle> = a;
	VarVehicle(ret_val)<Native_Angle> = a;
	return ret_val;
}

#if defined _ALS_AddStaticVehicle
	#undef AddStaticVehicle
#else
	#define _ALS_AddStaticVehicle
#endif
#define AddStaticVehicle antic_AddStaticVehicle
// -========================================================================- //
stock antic_AddStaticVehicleEx(model, Float:x, Float:y, Float:z, Float:a, c1, c2, respawn=HORAS_RVEH)
{
	new ret_val = AddStaticVehicleEx(model, Float:x, Float:y, Float:z, Float:a, c1, c2, respawn);
	Iter_Add(Vehicle, ret_val);
	VarVehicle(ret_val)<Native_x> = x;
	VarVehicle(ret_val)<Native_y> = y;
	VarVehicle(ret_val)<Native_z> = z;
	VarVehicle(ret_val)<Pos_x> = x;
	VarVehicle(ret_val)<Pos_y> = y;
	VarVehicle(ret_val)<Pos_z> = z;
	VarVehicle(ret_val)<Angle> = a;
	VarVehicle(ret_val)<Native_Angle> = a;
	return ret_val;
}

#if defined _ALS_AddStaticVehicleEx
	#undef AddStaticVehicleEx
#else
	#define _ALS_AddStaticVehicleEx
#endif
#define AddStaticVehicleEx antic_AddStaticVehicleEx
// -========================================================================- //
stock antic_CreateVehicle(model, Float:x, Float:y, Float:z, Float:a, c1, c2, respawn=HORAS_RVEH)
{
	new ret_val = CreateVehicle(model, Float:x, Float:y, Float:z, Float:a, c1, c2, respawn);
	Iter_Add(Vehicle, ret_val);
	VarVehicle(ret_val)<Native_x> = x;
	VarVehicle(ret_val)<Native_y> = y;
	VarVehicle(ret_val)<Native_z> = z;
	VarVehicle(ret_val)<Pos_x> = x;
	VarVehicle(ret_val)<Pos_y> = y;
	VarVehicle(ret_val)<Pos_z> = z;
	VarVehicle(ret_val)<Angle> = a;
	VarVehicle(ret_val)<Native_Angle> = a;
	return ret_val;
}


#if defined _ALS_CreateVehicle
	#undef CreateVehicle
#else
	#define _ALS_CreateVehicle
#endif
#define CreateVehicle antic_CreateVehicle
// -========================================================================- //
ANTIC::DestroyVehicle(vehicleid)
{
	if(IsValidVehicle(vehicleid))
	{
		Itter_Remove(Vehicle, vehicleid);
		return DestroyVehicle(vehicleid);
	}
	return 0;
}

#if defined _ALS_DestroyVehicle
	#undef DestroyVehicle
#else
	#define _ALS_DestroyVehicle
#endif
#define DestroyVehicle antic_DestroyVehicle
// -========================================================================- //
ANTIC::SetVehicleZAngle(vehicleid, Float: Angle)
{
	if(IsValidVehicle(vehicleid))
	{
		VarVehicle(vehicleid)<Angle> = Angle;
		SetVehicleZAngle(vehicleid, Angle);
		return 1;
	}
	return 0;
}

#if defined _ALS_DestroyVehicle
	#undef DestroyVehicle
#else
	#define _ALS_DestroyVehicle
#endif
#define DestroyVehicle antic_DestroyVehicle
// -========================================================================- //
ANTIC::SetPlayerSkillLevel(playerid, skill, level)
{
	if(!IsPlayerConnected(playerid))
	    return 0;

	if(0 <= skill <= MAX_WEAPON_SKILL_LEVEL)
	{
		VarAntic(playerid)<SkillLevel>[skill] = level;
		SetPlayerSkillLevel(playerid, skill, level);
		return 1;
	}
	return 0;
}

#if defined _ALS_SetPlayerSkillLevel
	#undef SetPlayerSkillLevel
#else
	#define _ALS_SetPlayerSkillLevel
#endif
#define SetPlayerSkillLevel antic_SetPlayerSkillLevel
// -========================================================================- //
ANTIC::GetPlayerSkillLevel(playerid, skill)
{
	if(!IsPlayerConnected(playerid))
	    return 0;

	if(0 <= skill <= MAX_WEAPON_SKILL_LEVEL)
	{
		return VarAntic(playerid)<SkillLevel>[skill];
	}
	return 0;
}

#if defined _ALS_GetPlayerSkillLevel
	#undef GetPlayerSkillLevel
#else
	#define _ALS_GetPlayerSkillLevel
#endif
#define GetPlayerSkillLevel antic_GetPlayerSkillLevel
// -========================================================================- //
ANTIC::TogglePlayerControllable(playerid, bool:toggle)
{
	if(!IsPlayerConnected(playerid))
	    return 0;

	if(toggle == false)
	{
		Bit_Set(antic_Freezed, playerid, true);
		TogglePlayerControllable(playerid, false);
		return 1;
	}
	if(toggle == true)
	{
		Bit_Set(antic_Freezed, playerid, false);
		TogglePlayerControllable(playerid, true);
		return 1;
	}
	return 0;
}

#if defined _ALS_TogglePlayerControllable
	#undef TogglePlayerControllable
#else
	#define _ALS_TogglePlayerControllable
#endif
#define TogglePlayerControllable antic_TogglePlayerControllable
// -========================================================================- //
ANTIC::SetSpawnInfo(playerid, team, skin, Float:x, Float:y, Float:z, Float:rotation, w1, w1_ammo, w2, w2_ammo, w3, w3_ammo)
{
	if(!IsPlayerConnected(playerid))
	    return 0;

	VarAntic(playerid)<Spawn_x> = x;
	VarAntic(playerid)<Spawn_y> = y;
	VarAntic(playerid)<Spawn_z> = z;

	return 1;
}

#if defined _ALS_TogglePlayerControllable
	#undef TogglePlayerControllable
#else
	#define _ALS_TogglePlayerControllable
#endif
#define TogglePlayerControllable antic_TogglePlayerControllable

