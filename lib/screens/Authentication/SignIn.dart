import 'package:tarot4521/Services/Auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
        /*
      appBar: AppBar(
        backgroundColor: Color(0xFF08091C),
        elevation: 0.0,
        title: Text('Sign In '),
      ),*/
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
              padding: const EdgeInsets.fromLTRB(0, 150.0, 0, 0),
              child: Column(
                children:<Widget> [

                  FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      color: Color(0xFFFBB03B),
                      onPressed: ()async{
                        dynamic result = await _auth.signInAnon();
                        if(result == null){
                          print('error signing in');
                        } else {
                          print('signed in');
                          print(result);
                        }
                      },
                      child: Text('Sign In Anon',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Elsie2',
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
