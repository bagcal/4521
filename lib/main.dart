import 'package:flutter/material.dart';
import 'package:tarot4521/screens/OpeningScreen.dart';
import 'package:tarot4521/screens/Wrapper.dart';
import 'package:tarot4521/screens/Authentication/authenticate.dart';
import 'package:provider/provider.dart';
import 'package:tarot4521/Services/User.dart';
import 'package:tarot4521/Services/Auth.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
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
