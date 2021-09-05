import 'package:player_music_flutter/app/modules/player_music/playerMusic_Page.dart';
import 'package:player_music_flutter/app/modules/player_music/playerMusic_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PlayerMusicModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PlayerMusicStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PlayerMusicPage()),
  ];
}
