// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = -100; // oGame
global.__objectDepths[1] = 0; // oTouchCompatible
global.__objectDepths[2] = 0; // oParSolid
global.__objectDepths[3] = 0; // oParJumpThru
global.__objectDepths[4] = 0; // oBlock
global.__objectDepths[5] = 6; // oJumpThru
global.__objectDepths[6] = 0; // oParEntity
global.__objectDepths[7] = 0; // oSlope1L
global.__objectDepths[8] = 0; // oSlope1R
global.__objectDepths[9] = 0; // oSlope2L
global.__objectDepths[10] = 0; // oSlope2R
global.__objectDepths[11] = 1; // oPushBlock
global.__objectDepths[12] = 0; // oPlayerAtkBox
global.__objectDepths[13] = -10; // oParticlePlayer
global.__objectDepths[14] = -100; // oFxFadeIn
global.__objectDepths[15] = -100; // oFxRoomGoTo
global.__objectDepths[16] = -100; // oFxRoomRestart
global.__objectDepths[17] = -1; // oParGrass
global.__objectDepths[18] = -1; // oFGGrass1
global.__objectDepths[19] = -1; // oFGGrass2
global.__objectDepths[20] = 3; // oBGGrass1
global.__objectDepths[21] = 3; // oBGGrass2
global.__objectDepths[22] = 1; // oPlayer
global.__objectDepths[23] = -2; // oParticleFgGrass
global.__objectDepths[24] = 0; // oParCrate
global.__objectDepths[25] = -2; // oParticleBgGrass
global.__objectDepths[26] = 2; // oCrateSmall
global.__objectDepths[27] = 1; // oCratePoof
global.__objectDepths[28] = 1; // oCoin


global.__objectNames[0] = "oGame";
global.__objectNames[1] = "oTouchCompatible";
global.__objectNames[2] = "oParSolid";
global.__objectNames[3] = "oParJumpThru";
global.__objectNames[4] = "oBlock";
global.__objectNames[5] = "oJumpThru";
global.__objectNames[6] = "oParEntity";
global.__objectNames[7] = "oSlope1L";
global.__objectNames[8] = "oSlope1R";
global.__objectNames[9] = "oSlope2L";
global.__objectNames[10] = "oSlope2R";
global.__objectNames[11] = "oPushBlock";
global.__objectNames[12] = "oPlayerAtkBox";
global.__objectNames[13] = "oParticlePlayer";
global.__objectNames[14] = "oFxFadeIn";
global.__objectNames[15] = "oFxRoomGoTo";
global.__objectNames[16] = "oFxRoomRestart";
global.__objectNames[17] = "oParGrass";
global.__objectNames[18] = "oFGGrass1";
global.__objectNames[19] = "oFGGrass2";
global.__objectNames[20] = "oBGGrass1";
global.__objectNames[21] = "oBGGrass2";
global.__objectNames[22] = "oPlayer";
global.__objectNames[23] = "oParticleFgGrass";
global.__objectNames[24] = "oParCrate";
global.__objectNames[25] = "oParticleBgGrass";
global.__objectNames[26] = "oCrateSmall";
global.__objectNames[27] = "oCratePoof";
global.__objectNames[28] = "oCoin";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	//global.__objectID2Depth[ objID ] = global.__objectDepths[i];
} // end for