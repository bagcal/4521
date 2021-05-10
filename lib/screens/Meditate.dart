import 'package:flutter/material.dart';
import 'Wrapper.dart';
import 'package:provider/provider.dart';
import 'package:tarot4521/Services/User.dart';
import 'package:tarot4521/screens/musictest.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';


class Meditate extends StatefulWidget {
  @override
  _MeditateState createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
  Random random = new Random();
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;


    @override
    void initState() {
      super.initState();
      initPlayer();
      advancedPlayer.setVolume(0.5);
      //audioCache.play('song3.mp3');
      getAudio();

    }

  Future<void> getAudio() async {
   var arr= [
     "https://assets.mixkit.co/music/download/mixkit-wedding-harp-672.mp3",
     "https://assets.mixkit.co/music/download/mixkit-chillax-655.mp3",
     "https://assets.mixkit.co/music/download/mixkit-chill-bro-494.mp3",
     "https://assets.mixkit.co/music/download/mixkit-i-believe-2-955.mp3",
     "https://assets.mixkit.co/music/download/mixkit-old-letter-854.mp3",
     "https://assets.mixkit.co/music/download/mixkit-ill-always-remember-806.mp3",
     "https://assets.mixkit.co/music/download/mixkit-classical-vibes-5-688.mp3",
   ];
   int randomNumber = random.nextInt(7);

    var url = arr[randomNumber];
    int res = await advancedPlayer.play( url, isLocal: true);
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

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    final user = Provider.of<User>(context);
    print(user);

    return Scaffold(
      appBar:  AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: Color(0xFF08091C),
      title: Text(''),
      actions: <Widget>[

        FlatButton.icon(
          icon: Icon(Icons.home, color: Colors.white,),
          label: Text('Home', style: TextStyle(color: Colors.white,),),
          onPressed: ()  {
            advancedPlayer.stop();
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),

      ],
    ),

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
              padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
              child: Column(
                children:<Widget> [

                  Container(
                    color: Color(0xFF08091C),

                    child: Center(
                      child: Text('Relax, Focus and\n Pick your Deck!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        fontSize: 37,
                        fontFamily: 'Elsie2',
                        color: Color(0xFFFAF7EA)
                      ),),
                    ),
                  ),


                  SizedBox(height: 45,),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                      FlatButton(
                      onPressed: () {advancedPlayer.stop();} ,
                      padding: EdgeInsets.all(0.0),
                      child: Image.network('https://res.cloudinary.com/bagcal/image/upload/v1620206361/card_pj355u.png', width: queryData.size.width/3.5,),
                  ),

                        FlatButton(
                          onPressed: () {getAudio();} ,
                          padding: EdgeInsets.all(0.0),
                          child: Image.network('https://res.cloudinary.com/bagcal/image/upload/v1620206361/card_pj355u.png', width: queryData.size.width/3.5,),
                        ),

                        FlatButton(
                          onPressed: () {advancedPlayer.stop();} ,
                          padding: EdgeInsets.all(0.0),
                          child: Image.network('https://res.cloudinary.com/bagcal/image/upload/v1620206361/card_pj355u.png', width: queryData.size.width/3.5,),
                        ),







                      ]
                  ),


/*
                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      color: Color(0xFFFBB03B),
                      onPressed: (){
                        advancedPlayer.stop();
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
                  ), */






                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


