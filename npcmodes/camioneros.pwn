#define RECORDING "camioneros" //This is the filename of your recording without the extension.
#define RECORDING_TYPE 2 //1 for in vehicle and 2 for on foot.

#include <a_npc>
main(){}
public OnRecordingPlaybackEnd() StartRecordingPlayback(RECORDING_TYPE, RECORDING);

#if RECORDING_TYPE == 1
  public OnNPCEnterVehicle(vehicleid, seatid) StartRecordingPlayback(RECORDING_TYPE, RECORDING);
  public OnNPCExitVehicle() StopRecordingPlayback();
#else
  public OnNPCSpawn() StartRecordingPlayback(RECORDING_TYPE, RECORDING);
#endif

//Este? si pero tienes el que cambiar el .rec de nombre a manolo_diaz.r eno funcionan mayus? sisi creo... yo no e probado sin amyus xD

