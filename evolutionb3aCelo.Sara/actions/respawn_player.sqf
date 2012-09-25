// Desc: A respawn control script

for [{}, {true}, {true}] do
{
  //waitUntil { !(alive player) };
  while { alive player } do { sleep 1.0 };
  
  nul=[] execVM "Dialogs\Respawn_Dialog.sqf";

  // wait for respawn countdown to finish and for the selection to be made from the dialog
  // (Upon auto respawning after countdown, you will respawn at "RespawnWest" marker.)
  //waitUntil { alive player && !dialog };
  while { !alive player || dialog } do { sleep 1.0 };
  
  // player spawned at "RespawnWest" marker initially, so move him to final selected spawn location
  player setPos getMarkerPos RespawnLocation;
};
