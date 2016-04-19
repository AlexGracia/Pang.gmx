/// Victory conditions check

// check if there are no more balls on the screen
numBalls = instance_number(objBall);
if (numBalls == 0)
{
    audio_stop_all();
    audio_play_sound(soundCongratulations, 0, 0);

    // show a victory message
    show_message("You win!!!");
    
    // maybe go to the next screen?
    room_restart();
}
