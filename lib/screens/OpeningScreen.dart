import 'package:flutter/material.dart';
import 'package:tarot4521/screens/Meditate.dart';
import 'Wrapper.dart';
import 'package:provider/provider.dart';
import 'package:tarot4521/Services/User.dart';
import 'package:tarot4521/screens/musictest.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class OpeningScreen extends StatefulWidget {
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
/*
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

    @override
    void initState() {
      super.initState();
      initPlayer();
      advancedPlayer.setVolume(0.5);
      audioCache.play('song3.mp3');
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
*/
    @override
    Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/openingBG.png'),
                fit: BoxFit.cover,
              )
          ) ,

          child: Center(
            child:
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100.0, 0, 0),
              child: Column(
                children:<Widget> [

                  Container(height: 270,
                      child:Image.asset('images/logo.png') ),

                  SizedBox(height: 0,),

                  FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    color: Color(0xFFFBB03B),
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wrapper()),
                    );},
                    child: Text('Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Elsie',
                      fontSize: 25,
                      

                    ), )
                  ),


                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      color: Color(0xFFFBB03B),
                      onPressed: (){
                       // advancedPlayer.stop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LocalAudio()),
                        );},
                      child: Text('play',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Elsie',
                          fontSize: 25,


                        ), )
                  ),

                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      color: Color(0xFFFBB03B),
                      onPressed: (){
                        // advancedPlayer.stop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Meditate()),
                        );},
                      child: Text('Meditate',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Elsie',
                          fontSize: 25,


                        ), )
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


