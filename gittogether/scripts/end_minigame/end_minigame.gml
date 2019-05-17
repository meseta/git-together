/// @func end_minigame(won?)
/// @param won?

if (global.GamePlaying != noone) {
	var _won = (argument_count > 0) ? argument[0] : false;
	if (_won) {
		global.Coins += DEF_COIN_REWARD;
		global.GamesWon = global.GamesWon | (1 << global.GamePlaying);
		ds_list_add(global.GameWonList, global.GamePlaying);
	}
}

global.GamePlaying = noone;

audio_stop_all();
room_goto_transition(rm_Overworld,TransType.screenFade);
