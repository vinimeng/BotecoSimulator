if (!audio_is_playing(backgroundMusic[backgroundMusicId])) {
    backgroundMusicId++;
    
    if (backgroundMusicId >= array_length(backgroundMusic)) {
        backgroundMusicId = 0;
    }
    
    audio_play_sound(backgroundMusic[backgroundMusicId], 10, false);
}
