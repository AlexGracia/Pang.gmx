/// Victory conditions check

// check if there are no more balls on the screen
numBalls = instance_number(objBall);
if (numBalls == 0)
{

    audio_stop_all();
    // End room, end game
    if (room == room_last){
        audio_play_sound(soundCongratulations, 0, 0);
        show_message("You win!!!");
        game_restart();
    }
    else
        room_goto_next();
}
