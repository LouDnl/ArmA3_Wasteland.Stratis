// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: playerSetupEnd.sqf
//	@file Author: [GoT] JoSchaap, AgentRev

private "_player";
_player = _this;

_player addRating 9999999;

[objNull, _player] call mf_player_actions_refresh;
[] execVM "client\functions\playerActions.sqf";
[] execVM "addons\EtV\init.sqf";				// Explosives to Vehicles
//[] execVM "addons\bases\init.sqf";				// NLU Base script
[] execVM "addons\Safe\init.sqf";				// Safe script

_player groupChat "Wasteland - Initialization Complete";
playerSetupComplete = true;
