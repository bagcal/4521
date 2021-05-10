import 'package:flutter/material.dart';
import 'package:tarot4521/screens/Home.dart';
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
       //home: OpeningScreen(),
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => OpeningScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/home': (context) => Home(),
        },

      ),


    );
/*
    return MaterialApp(
       home: OpeningScreen(),
    );

 */

  }
}


