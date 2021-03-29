import 'package:flutter/material.dart';
import 'package:tarot4521/screens/Authentication/authenticate.dart';
import 'package:tarot4521/Services/Auth.dart';
import 'package:tarot4521/Services/User.dart';
import 'package:provider/provider.dart';
import 'package:tarot4521/screens/Home.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    if (user== null){
      return Authenticate();
    }else {
      return Home();
    }


  }
}

    