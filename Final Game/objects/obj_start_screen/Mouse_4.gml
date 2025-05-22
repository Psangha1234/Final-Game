if (room_next(room) != -1) {
    room_goto(room_next(room));
} else {
    // No next room, maybe restart or go to a specific room
    room_goto(room);
}