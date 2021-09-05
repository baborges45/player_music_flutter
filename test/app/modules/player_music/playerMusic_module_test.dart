import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:player_music_flutter/app/modules/player_music/playerMusic_module.dart';

void main() {
  setUpAll(() {
    initModule(PlayerMusicModule());
  });
}
