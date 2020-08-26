import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music_player/music_player.dart';



class MyMusic extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyMusic> {
  MusicPlayer musicPlayer;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Initializing the Music Player and adding a single [PlaylistItem]
  Future<void> initPlatformState() async {
    musicPlayer = MusicPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Center(
                  child: Text(
                    "Lets set the vibe",
                  ))),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () => musicPlayer.play(MusicItem(
              trackName: 'Sample',
              albumName: 'Sample Album',
              artistName: 'Sample Artist',
              url: 'https://goo.gl/5RQjTQ',
              coverUrl: 'https://goo.gl/Wd1yPP',
              duration: Duration(seconds: 255),
            )),
            child: Text('Play'),
          ),
        ),
      ),
    );
  }
}