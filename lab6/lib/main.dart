import 'package:flutter/material.dart';
import 'package:lab6/models/user.dart';
import 'package:lab6/screens/wrapper.dart';
import 'package:lab6/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
