import 'package:flutter/material.dart';
import 'Wrapper.dart';

class OpeningScreen extends StatefulWidget {
  @override
  _OpeningScreenState createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
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

                 /* FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      color: Color(0xFFFBB03B),
                      onPressed: (){},
                      child: Text('Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Elsie',
                          fontSize: 20,

                        ), )
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


