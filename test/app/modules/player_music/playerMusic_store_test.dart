import 'package:flutter_test/flutter_test.dart';
import 'package:player_music_flutter/app/modules/player_music/playerMusic_store.dart';
 
void main() {
  late PlayerMusicStore store;

  setUpAll(() {
    store = PlayerMusicStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}