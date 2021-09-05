// TODO Implement this library.import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:player_music_flutter/app/modules/player_music/playerMusic_store.dart';
import 'package:flutter/material.dart';

class PlayerMusicPage extends StatefulWidget {
  final String title;
  const PlayerMusicPage({Key? key, this.title = 'PlayerMusicPage'})
      : super(key: key);
  @override
  PlayerMusicPageState createState() => PlayerMusicPageState();
}

class PlayerMusicPageState extends State<PlayerMusicPage> {
  final PlayerMusicStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
