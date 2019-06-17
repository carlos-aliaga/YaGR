// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -1; // oSolido
global.__objectDepths[1] = 0; // oControlador
global.__objectDepths[2] = 0; // object18
global.__objectDepths[3] = -1; // oPlayer
global.__objectDepths[4] = -1; // oArma
global.__objectDepths[5] = 0; // oParedSolida
global.__objectDepths[6] = 0; // oTrampa
global.__objectDepths[7] = 0; // oPuerta
global.__objectDepths[8] = 0; // oExit
global.__objectDepths[9] = -1; // oExplote
global.__objectDepths[10] = 0; // oGenerador0
global.__objectDepths[11] = 0; // oGenLobber
global.__objectDepths[12] = 0; // oGenerador1
global.__objectDepths[13] = 0; // oEnemigoBase
global.__objectDepths[14] = 0; // oDemonio
global.__objectDepths[15] = 0; // oLobber
global.__objectDepths[16] = -1; // oDemonioShot
global.__objectDepths[17] = 0; // oLobberShot
global.__objectDepths[18] = 0; // oFantasma
global.__objectDepths[19] = 0; // oTesoro
global.__objectDepths[20] = 0; // oLlave
global.__objectDepths[21] = 0; // oComida
global.__objectDepths[22] = 0; // o100
global.__objectDepths[23] = 0; // oPocion
global.__objectDepths[24] = 0; // oSeleccionaThor
global.__objectDepths[25] = 0; // oSeleccionaMerlin
global.__objectDepths[26] = 0; // oSeleccionaElf
global.__objectDepths[27] = 0; // oSeleccionaThyra
global.__objectDepths[28] = 0; // oSelecciona


global.__objectNames[0] = "oSolido";
global.__objectNames[1] = "oControlador";
global.__objectNames[2] = "object18";
global.__objectNames[3] = "oPlayer";
global.__objectNames[4] = "oArma";
global.__objectNames[5] = "oParedSolida";
global.__objectNames[6] = "oTrampa";
global.__objectNames[7] = "oPuerta";
global.__objectNames[8] = "oExit";
global.__objectNames[9] = "oExplote";
global.__objectNames[10] = "oGenerador0";
global.__objectNames[11] = "oGenLobber";
global.__objectNames[12] = "oGenerador1";
global.__objectNames[13] = "oEnemigoBase";
global.__objectNames[14] = "oDemonio";
global.__objectNames[15] = "oLobber";
global.__objectNames[16] = "oDemonioShot";
global.__objectNames[17] = "oLobberShot";
global.__objectNames[18] = "oFantasma";
global.__objectNames[19] = "oTesoro";
global.__objectNames[20] = "oLlave";
global.__objectNames[21] = "oComida";
global.__objectNames[22] = "o100";
global.__objectNames[23] = "oPocion";
global.__objectNames[24] = "oSeleccionaThor";
global.__objectNames[25] = "oSeleccionaMerlin";
global.__objectNames[26] = "oSeleccionaElf";
global.__objectNames[27] = "oSeleccionaThyra";
global.__objectNames[28] = "oSelecciona";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for