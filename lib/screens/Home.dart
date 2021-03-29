import 'package:tarot4521/Services/Auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color(0xFF08091C),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person, color: Colors.white,),
              label: Text('logout', style: TextStyle(color: Colors.white,),),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/GeneralBG.png'),
                fit: BoxFit.cover,

              )

          ),

          child: Center(
            child: Padding( padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Column(
              children: <Widget> [
                IconButton(
                  splashColor: Colors.black,
                  icon: Image.asset('images/newReading.png'),
                  iconSize: 350,
                  onPressed: () {

                  },
                ),



              ],
            ),),


          ),

        ),
      ),
    );
  }
}
