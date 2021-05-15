

import 'dart:ffi';
import 'package:http/http.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

/*

class LocalAudio extends StatefulWidget {
  @override
  _LocalAudioState createState() => _LocalAudioState();
}


class _LocalAudioState extends State<LocalAudio> {


  Duration duration= new Duration();
  AudioPlayer audioPlayer= new AudioPlayer();
  Duration position= new Duration();
  bool playing = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image(image: AssetImage('images/coin.png'), width: 50,),
                    Image(image: AssetImage('images/coin.png'), width: 50,),
                    Image(image: AssetImage('images/coin.png'), width: 50,),

                  ]
              ),
            ),
            slider(),
            Material(

              child: InkWell(
                onTap: (){
                  getAudio();
                },
                child: Icon(
                  playing==false? Icons.play_circle_outline: Icons.pause_circle_outline,
                  size: 50,
                  color: Colors.blue,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }


Widget slider(){
  return Material(
    child: Slider.adaptive(
        value: duration.inSeconds.toDouble(),
        onChanged: (double value) {
          setState(() {
            audioPlayer.seek(new Duration(seconds: (value / 1000).roundToDouble().round() ));
          });
        },
        min: 0.0,
        max:position.inSeconds.toDouble(),

    ),
  );
}

void getAudio() async {
    var url= "https://assets.mixkit.co/music/download/mixkit-tech-house-vibes-130.mp3";

    //play is false init
    if(playing){
      var res= await audioPlayer.pause();
      if(res==1){
        setState(() {
          playing= false;
        });
      }

    }else {
      var res = await audioPlayer.play(url );
      if(res==1){
        setState(() {
          playing= true;
        });
      }

    }

    audioPlayer.onDurationChanged.listen((Duration dd) {
      setState(() {
        duration =dd;
      });
      
    });

    audioPlayer.onAudioPositionChanged.listen((Duration dd) {
      setState(() {
        position=dd;
      });
    });
} // end of getAudio



}

*/

// JUNCT






typedef void OnError(Exception exception);


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

    //audioCache.play('song3.mp3');
  }

  Future<void> getAudio() async {

    var url = "https://assets.mixkit.co/music/download/mixkit-tech-house-vibes-130.mp3";
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



  String localFilePath;

  Widget _tab(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Center(
          child: Container(
            //color: Colors.blue,
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children
                      .map((w) => Container(child: w, padding: EdgeInsets.all(0.0)))
                      .toList(),
                ),
                slider(),
              ],
            ),

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
        
        activeColor: Color(0xFFFBB03B),
        inactiveColor: Colors.white,
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



      FlatButton.icon(
        icon: Icon(Icons.pause_circle_outline, color: Colors.white, size: 50),
        label: Text('', style: TextStyle(color: Colors.white,),),
        onPressed: ()  {
          advancedPlayer.pause();
        },
      ),

      FlatButton.icon(
        icon: Icon(Icons.play_circle_outline, color: Colors.white, size: 50),
        label:Text('', style: TextStyle(color: Colors.white,),),
        onPressed: ()  {
          getAudio();

        },
      ),

      FlatButton.icon(
        icon: Icon(Icons.stop_circle_outlined, color: Colors.white, size: 50),
        label: Text('', style: TextStyle(color: Colors.white,),),
        onPressed: ()  {
          advancedPlayer.stop();
        },
      ),

      SizedBox(
        height: MediaQuery.of(context).size.height * 0.02,
      ),
      /*
      _btn('Play', () => audioCache.play('song3.mp3')),


      _btn('Pause', () => advancedPlayer.pause()),
      _btn('Stop', () => advancedPlayer.stop()),
      slider()
      */

    ]);
  }


  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    advancedPlayer.seek(newDuration);
  }


  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xFF08091C),
          title: Text('Your Reading'),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/openingBG.png'),
                fit: BoxFit.cover,
              )
          ) ,
          child: Column(

            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/fool.jpg', width: queryData.size.width/4.5,),
                    Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/fool.jpg', width: queryData.size.width/4.5,),
                    Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/fool.jpg',  width: queryData.size.width/4.5,),
                    Image.network('https://cdn.thetarotlady.com/wp-content/uploads/2018/12/fool.jpg',  width: queryData.size.width/4.5,),

                  ]
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),

              LocalAudio(),
/*
              FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  color: Color(0xFFFBB03B),
                  onPressed: (){ audioCache.play('song3.mp3'); },
                  child: Text('play',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Elsie',
                      fontSize: 25,


                    ), )
              ),
*/
          Center(
            child: Container(
                margin: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.height * 0.02 , 0, 0),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                color: Color(0xFFFAF7EA),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.35 ,

                child: SingleChildScrollView(
                  child: Text("here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                  style: TextStyle(fontSize: 15),),



            )
            ),
          )

            ],
          ),
        ),
      ),
    );
  }
}



