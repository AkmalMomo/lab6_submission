import 'package:flutter/material.dart';
import 'package:lab6/models/user.dart';
import 'package:lab6/screens/authenticate/authenticate.dart';
import 'package:lab6/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    //Return either home or authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
