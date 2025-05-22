// Play the cave ambient music, looped forever
audio_play_sound(snd_cave_ambient, 1, true);

// Go to the next room (start the game)
if (room_next(room) != -1) {
    room_goto(room_next(room));
} else {
    room_goto(room);
}
