import 'package:flutter/material.dart';
import 'package:tarot4521/screens/OpeningScreen.dart';
import 'package:tarot4521/screens/Quiz.dart';
import 'package:tarot4521/screens/Wrapper.dart';
import 'package:tarot4521/screens/Authentication/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:tarot4521/Services/User.dart';
import 'package:tarot4521/Services/Auth.dart';
import 'package:tarot4521/screens/musictest.dart';



void main() {
    runApp(MyApp( ));
 // runApp(new MaterialApp(debugShowCheckedModeBanner: false,home:  LocalAudio()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        //home:  LocalAudio(),
       home: OpeningScreen(),


      ),


    );
/*
    return MaterialApp(
       home: OpeningScreen(),
    );

 */

  }
}



/*


import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';


typedef void OnError(Exception exception);

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false,home:  LocalAudio()));
}

class LocalAudio extends StatefulWidget {
  @override
  _LocalAudio createState() =>  _LocalAudio();
}

class _LocalAudio extends State<LocalAudio> {
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);

    advancedPlayer.durationHandler = (d) => setState(() {
      _duration = d;
    });

    advancedPlayer.positionHandler = (p) => setState(() {
      _position = p;
    });
  }

  String localFilePath;

  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: children
                .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
                .toList(),
          ),
        ),
      ],
    );
  }

  Widget _btn(String txt, VoidCallback onPressed) {
    return ButtonTheme(
      minWidth: 48.0,
      child: Container(
        width: 150,
        height: 45,
        child: RaisedButton(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Text(txt),
            color: Colors.pink[900],
            textColor: Colors.white,
            onPressed: onPressed),
      ),
    );
  }

  Widget slider() {
    return Slider(
        activeColor: Colors.black,
        inactiveColor: Colors.pink,
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            seekToSecond(value.toInt());
            value = value;
          });
        });
  }

  Widget LocalAudio() {
    return _tab([
      _btn('Play', () => audioCache.play('song3.mp3')),
      _btn('Pause', () => advancedPlayer.pause()),
      _btn('Stop', () => advancedPlayer.stop()),
      slider()
    ]);
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.teal,
          title: Center(child: Text('LOCAL AUDIO')),
        ),
        body: TabBarView(
          children: [LocalAudio()],
        ),
      ),
    );
  }
}


 */