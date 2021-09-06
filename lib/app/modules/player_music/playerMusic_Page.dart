import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:player_music_flutter/app/modules/player_music/playerMusic_store.dart';
import 'package:flutter/material.dart';

class PlayerMusicPage extends StatefulWidget {
  final String? url;
  const PlayerMusicPage({Key? key, this.url}) : super(key: key);
  @override
  PlayerMusicPageState createState() => PlayerMusicPageState();
}

class PlayerMusicPageState extends State<PlayerMusicPage> {
  final PlayerMusicStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tocando Musica ${widget.url}'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          buildImageHeader(),
          buildNameMusic(),
          buildProgressBar(),
          buildButtons(),
        ],
      ),
    );
  }

  Container buildImageHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Container(
        width: MediaQuery.of(this.context).size.width,
        height: 350,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.url.toString()), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade800,
                  blurRadius: 15,
                  offset: Offset(2, 5))
            ]),
      ),
    );
  }

  buildNameMusic() {
    return Column(
      children: [
        Container(
          child: Text(
            'Californication',
            style: GoogleFonts.ptSansCaption(
                fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Red Hot Chilli Pppers',
            style: GoogleFonts.ptSansCaption(fontSize: 15),
          ),
        ),
      ],
    );
  }

  buildProgressBar() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 30),
          child: LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor:
                AlwaysStoppedAnimation<Color>(Colors.tealAccent.shade700),
            value: 0.5,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '0:15',
                style: TextStyle(color: Colors.white),
              ),
              Expanded(
                child: Container(),
              ),
              Text('2:00', style: TextStyle(color: Colors.white)),
            ],
          ),
        )
      ],
    );
  }

  buildButtons() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.fast_rewind_rounded,
                size: 50,
              )),
          Expanded(
            child: TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.play_arrow_rounded,
                  size: 50,
                )),
          ),
          TextButton(
              onPressed: () {},
              child: Icon(
                Icons.fast_forward_rounded,
                size: 50,
              )),
        ],
      ),
    );
  }
}
