import 'package:flutter/material.dart';
import 'package:qr_master/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  //playlist of songs
  final List<Song> _playlist = [
    //song 1
    Song(
        songName: "Homage",
        artistName: "Mild High Club",
        albumArtImagePath: "assets/images/album_mild_high_club.jpg",
        audioPath: "audio/Mild High Club - Homage.mp3"),

    //song 2
    Song(
        songName: "The Nights",
        artistName: "Avicii",
        albumArtImagePath: "assets/images/avicii.jpeg",
        audioPath: "audio/The Nights.mp3"),
    //song 3
    Song(
        songName: "Mary on A Cross",
        artistName: "Ghost",
        albumArtImagePath: "assets/images/ghost.jpg",
        audioPath: "audio/Ghost - Mary On A Cross (Official Audio).mp3"),
  ];

  //current song playing index
  int? _currentSongIndex;

  /*
  
  G E T T E R S

  */

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  /*

  S E T T E R S

  */
}
