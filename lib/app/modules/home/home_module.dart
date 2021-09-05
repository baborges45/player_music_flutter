import 'package:flutter_modular/flutter_modular.dart';
import 'package:player_music_flutter/app/modules/player_music/playerMusic_module.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ModuleRoute('/player', module: PlayerMusicModule())
  ];
}
